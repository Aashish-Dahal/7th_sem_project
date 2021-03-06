import 'package:flutter/material.dart';
import 'package:masu_bazar/view/screens/widgets/appbar.dart';

class SettingNavBarItem extends StatelessWidget {
  const SettingNavBarItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
          actions: [
            Search(),
          ],
        ),
        body: Container(
          // color: Colors.green,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Text('Setting'),
          ),
        ));
  }
}
