import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/nav_screen/nav_controller.dart';
import 'package:masu_bazar/screens/nav_screen/nav_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BottomNavItem> tabController = BottomNavItem.bottomNavBarItem;
  int _currentTab = 0;
  final tabs = [
    HomeNavBarItem(),
    MeatShopNavBarItem(),
    AddNavBarItemButton(),
    ProfileNavBarItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab,
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
        items: tabController
            .map((eachTab) => BottomNavigationBarItem(
                  icon: eachTab.icon,
                  label: eachTab.label,
                  backgroundColor: eachTab.color,
                ))
            .toList(),
      ),
    );
  }
}
