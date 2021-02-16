import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/goatTab_list/goatTab_list.dart';
import 'package:masu_bazar/screens/login/login.dart';
import 'TabModel/tabItem.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';

class KhasiTabList extends StatelessWidget {
  List<TabModel> khasiTabItem = TabModel.khasiTabItemList;

  final title;
  List<Widget> containers = [
    // KhasiList(),
    // BokaList(),
    Center(
      child: Text('बाख्रा'),
    ),
    Center(
      child: Text('बाख्रा'),
    ),
    Center(
      child: Text('बाख्रा'),
    ),
    Center(
      child: Text('च्यांग्रा'),
    ),
    Center(
      child: Text('भेडा'),
    ),
  ];

  KhasiTabList({Key key, this.title}) : super(key: key);
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
        length: khasiTabItem.length,
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
                isScrollable: true,
                indicatorColor: Colors.orange[600],
                indicatorSize: TabBarIndicatorSize.label,
                tabs: khasiTabItem.map((eachTab) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
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
