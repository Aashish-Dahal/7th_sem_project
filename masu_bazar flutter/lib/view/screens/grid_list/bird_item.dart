import 'package:flutter/material.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';
import 'package:masu_bazar/view/screens/widgets/appbar.dart';
import 'package:provider/provider.dart';

class BirdTabList extends StatelessWidget {
  final title;
  final List<Widget> containers = [
    Center(
      child: Text('परेवा'),
    ),
    Center(
      child: Text('सुगा'),
    ),
    Center(
      child: Text('love Birds'),
    ),
    Center(
      child: Text('अन्य'),
    ),
  ];

  BirdTabList({Key key, this.title}) : super(key: key);
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
            length: value.birdTabItems.length,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 0.5, right: 0.5),
                  constraints: BoxConstraints.expand(height: 60),
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
                    tabs: value.birdTabItems.map((eachTab) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 13.0),
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
