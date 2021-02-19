import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/animal.dart';
import 'package:masu_bazar/screens/widgets/buff.dart';
import 'package:masu_bazar/screens/widgets/chicken.dart';
import 'package:masu_bazar/screens/widgets/deal_day.dart';
import 'package:masu_bazar/screens/widgets/mutton.dart';
import 'package:masu_bazar/screens/widgets/pork.dart';
import 'package:masu_bazar/screens/widgets/seafood.dart';

class MeatInfoProvider extends ChangeNotifier {
  List<MeatProduct> _animalMeatInfo = [
    MeatProduct(
        image: "assets/meat_shop_images/deal.png",
        name: "Deal of the day",
        titleName: "Deal of the day"),
    MeatProduct(
        image: "assets/meat_shop_images/chicken.png",
        name: "Chicken",
        titleName: "Chicken Items"),
    MeatProduct(
        image: "assets/meat_shop_images/mutton.png",
        name: "Mutton",
        titleName: "Mutton Items"),
    MeatProduct(
        image: "assets/meat_shop_images/fish.png",
        name: "Seafood",
        titleName: "Seafood Items"),
    MeatProduct(
        image: "assets/meat_shop_images/pork.png",
        name: "Pork",
        titleName: "Pork Items"),
    MeatProduct(
        image: "assets/meat_shop_images/buff.png",
        name: "Buff",
        titleName: "Buff Items"),
    MeatProduct(
        image: "assets/meat_shop_images/local.png",
        name: "Local",
        titleName: "Local Items"),
    MeatProduct(
        image: "assets/meat_shop_images/chicken.png",
        name: "Anya",
        titleName: "Anya Items"),
  ];

  List<MeatProduct> get items {
    return [..._animalMeatInfo];
  }

  addProduct() {
    notifyListeners();
  }

  static List<Widget> getMeatTabList = [
    DealList(),
    ChickenList(),
    MuttonList(),
    FishList(),
    PorkList(),
    BuffList(),
  ];
  List<Widget> get tabItems {
    return [...getMeatTabList];
  }
}
