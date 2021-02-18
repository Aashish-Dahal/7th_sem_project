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
    BottomNavItem(icon: Icon(Icons.home_outlined), color: Colors.red, label: "Home"),
    BottomNavItem(
        icon: Icon(Icons.shopping_bag_outlined),
        label: "Meat Shop"),
    BottomNavItem(
        icon: Icon(Icons.add_circle_outline), color: Colors.blue, label: "Add"),
    
    BottomNavItem(icon: Icon(Icons.person_outline), label: "Account"),
  ];
}
