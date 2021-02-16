import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/grid_list/TabModel/tabItem.dart';
import 'package:masu_bazar/screens/login/login.dart';
import 'grid_list.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';

class RagaTabList extends StatelessWidget {
  List<TabModel> tabItem = TabModel.bhaisiTabItemList;
  final title;
  List<Widget> containers = [
    Center(
      child: Text('गाई'),
    ),
    Center(
      child: Text('भैंसी'),
    ),
    Center(
      child: Text('गोरू'),
    ),
    Center(
      child: Text('राँगा'),
    ),
  ];

  RagaTabList({Key key, this.title}) : super(key: key);
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
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.orange[600],
                tabs: tabItem.map((eachTab) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Tab(
                      iconMargin: EdgeInsets.only(top: 2),
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
