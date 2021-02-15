import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/nav_screen/nav_controller.dart';
import 'package:masu_bazar/screens/nav_screen/nav_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BottomNavItem> tabController = BottomNavItem.bottomNavBarItem;
  int _currentTab = 0;
  final tabs = [
    HomeButton(),
    MeatShopButton(),
    Forms(),
    Setting(),
    ProfileList(),
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
        // items: [
        //   //=======Home======//
        //   BottomNavigationBarItem(
        //     icon: Icon(
        //       Icons.home,
        //     ),
        //     backgroundColor: Colors.red,
        //     label: 'Home',
        //     //========Home============//
        //   ),
        //   BottomNavigationBarItem(
        //       icon: CircleAvatar(
        //         radius: 13.0,
        //         backgroundImage: AssetImage('assets/images/logo1.png'),
        //       ),
        //       label: 'Meat Shop'
        //       //========Meat Shop==========//
        //       ),

        //   //========Add==========//
        //   BottomNavigationBarItem(
        //     icon: Icon(
        //       Icons.add_circle,
        //     ),
        //     label: 'Add',
        //     backgroundColor: Colors.blue,
        //     //========Add==========//
        //   ),
        //   //========Setting==========//
        //   BottomNavigationBarItem(
        //     icon: Icon(
        //       Icons.settings,
        //     ),
        //     label: 'Setting',
        //     backgroundColor: Colors.yellow,
        //     //========Setting============//
        //   ),
        //   //========Profile============//
        //   BottomNavigationBarItem(
        //       icon: CircleAvatar(
        //         radius: 13.0,
        //         backgroundImage: AssetImage('assets/images/ashish.jpg'),
        //       ),
        //       label: 'Profile'),
        //   //========Profile============//
        // ]
      ),
    );
  }
}
