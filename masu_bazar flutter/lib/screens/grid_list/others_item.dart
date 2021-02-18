import 'package:flutter/material.dart';
import 'package:masu_bazar/Provider/tabProvider.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';
import 'package:provider/provider.dart';

class AnyaTabList extends StatelessWidget {
  final title;
  List<Widget> containers = [
    Center(
      child: Text('सुँगुर/बदेल'),
    ),
    Center(
      child: Text('खरायो'),
    ),
    Center(
      child: Text('कुकुर'),
    ),
    Center(
      child: Text('घोडा'),
    ),
    Center(
      child: Text('अन्य'),
    ),
  ];

  AnyaTabList({Key key, this.title}) : super(key: key);
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
            length: value.otherTabItems.length,
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
                    tabs: value.otherTabItems.map((eachTab) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Tab(
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
