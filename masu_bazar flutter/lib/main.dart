import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/grid_list/grid_list.dart';
import 'package:masu_bazar/screens/widgets/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo projet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        indicatorColor: Colors.white,
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: HomePage(),
    );
  }
}
