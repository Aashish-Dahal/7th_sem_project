import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/bnb.dart';
import 'package:masu_bazar/screens/profile.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../screens/nav_screen/nav_screen.dart';

class BNBProvider with ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  List<Widget> _tabItems = [
    HomeNavBarItem(),
    MeatShopNavBarItem(),
    AddNavBarItemButton(),
    Profile(),
  ];
  List<Widget> get tabs {
    return [..._tabItems];
  }

  List<BNBModel> _barItems = [
    BNBModel(icon: Icon(Icons.home_outlined), color: Colors.red, label: "Home"),
    BNBModel(
        icon: Icon(MdiIcons.shoppingOutline),
        label: "Meat Shop",
        color: Colors.red),
    BNBModel(
        icon: Icon(Icons.add_circle_outline), color: Colors.blue, label: "Add"),
    BNBModel(
        icon: Icon(Icons.person_outline),
        label: "Account",
        color: Colors.orange),
  ];
  List<BNBModel> get bars {
    return [..._barItems];
  }
}
