import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/grid_list/TabModel/tabItem.dart';
import 'package:masu_bazar/screens/login/login.dart';
import 'grid_list.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';

class VakalTabList extends StatelessWidget {
  List<TabModel> tabItem = TabModel.occusionTabItemList;
  final title;
  List<Widget> containers = [
    Center(
      child: Text('कालो बोका'),
    ),
    Center(
      child: Text('परेवा'),
    ),
    Center(
      child: Text('अन्य'),
    ),
  ];

  VakalTabList({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Search(),
          Padding(padding: EdgeInsets.all(8.0), child: null //Logout(),
              ),
        ],
      ),
      body: DefaultTabController(
        length: tabItem.length,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 0.5, right: 0.5),
              constraints: BoxConstraints.expand(height: 63),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.0),
                border: Border.all(
                    color: Colors.orangeAccent, style: BorderStyle.solid),
              ),
              child: TabBar(
                isScrollable: false,
                indicatorColor: Colors.orange[600],
                indicatorSize: TabBarIndicatorSize.label,
                tabs: tabItem.map((eachTab) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Tab(
                      text: eachTab.title,
                      icon: eachTab.image,
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(child: TabBarView(children: containers))
          ],
        ),
      ),
    );
  }
}
