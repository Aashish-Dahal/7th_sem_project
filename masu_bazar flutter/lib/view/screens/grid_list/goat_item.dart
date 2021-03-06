import 'package:flutter/material.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';
import 'package:masu_bazar/view/screens/goatTab_list/goatTab_list.dart';
import 'package:masu_bazar/view/screens/goatTab_list/khasi_list.dart';
import 'package:masu_bazar/view/screens/widgets/appbar.dart';
import 'package:provider/provider.dart';

class KhasiTabList extends StatelessWidget {
  final title;
  final List<Widget> containers = [
    KhasiList(),
    BokaList(),
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
    return ChangeNotifierProvider(
      create: (context) => TabProvider(),
      child: Scaffold(
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
        body: Consumer<TabProvider>(builder: (context, value, child) {
          return DefaultTabController(
            length: value.khasiTabItems.length,
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
                    tabs: value.khasiTabItems.map((eachTab) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                        child: Tab(
                          iconMargin: EdgeInsets.only(top: 2),
                          text: eachTab.tabName,
                          icon: eachTab.image,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Expanded(child: TabBarView(children: containers))
              ],
            ),
          );
        }),
      ),
    );
  }
}
