import 'package:flutter/material.dart';

class BottomNavItem {
  final Widget icon;
  final Color color;
  final String label;

  BottomNavItem({
    this.icon,
    this.color,
    this.label,
  });
  static List<BottomNavItem> bottomNavBarItem = [
    BottomNavItem(icon: Icon(Icons.home), color: Colors.red, label: "Home"),
    BottomNavItem(
        icon: CircleAvatar(
          radius: 13.0,
          backgroundImage: AssetImage('assets/images/logo1.png'),
        ),
        label: "Meat Shop"),
    BottomNavItem(
        icon: Icon(Icons.add_circle), color: Colors.blue, label: "Add"),
    
    BottomNavItem(icon: Icon(Icons.person), label: "Account"),
  ];
}
