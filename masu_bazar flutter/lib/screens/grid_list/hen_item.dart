import 'package:flutter/material.dart';
import 'package:masu_bazar/Provider/tabProvider.dart';
import 'package:masu_bazar/screens/login/login.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';
import 'package:provider/provider.dart';
import 'grid_list.dart';
import 'package:masu_bazar/screens/henTab_list/kukhura_list.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';

class KukhuraTabList extends StatelessWidget {
  final title;
  List<Widget> containers = [
    KukhuraList(),
    Center(
      child: Text('फार्म जातका'),
    ),
    Center(
      child: Text('हाँस'),
    ),
    Center(
      child: Text('लौकाट'),
    ),
    Center(
      child: Text('बटाई'),
    ),
    Center(
      child: Text('टर्की'),
    ),
    Center(
      child: Text('fancy कुखुरा'),
    ),
  ];

  KukhuraTabList({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TabProvider(),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: white),
          title: Text(
            title,
            style: TextStyle(color: white),
          ),
          actions: [
            Search(),
            Padding(padding: EdgeInsets.all(8.0), child: null //Logout(),
                ),
          ],
        ),
        body: Consumer<TabProvider>(builder: (context, value, child) {
          return DefaultTabController(
            length: value.henTabItems.length,
            child: Column(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints.expand(height: 63),
                  margin: EdgeInsets.only(left: 0.5, right: 0.5),
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
                    tabs: value.henTabItems.map((eachTab) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Tab(
                          iconMargin: EdgeInsets.only(top: 12),
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
