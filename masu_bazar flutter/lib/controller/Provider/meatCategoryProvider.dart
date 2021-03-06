import 'package:flutter/foundation.dart';
import 'package:masu_bazar/Model/meatCategory.dart';

class MeatCategoryProvider extends ChangeNotifier {
  List<MeatCategoryModel> _chickenItem = [
    MeatCategoryModel(
        image: "assets/chicken_images/nrmlckn.jpg", name: "Normal Chicken"),
    MeatCategoryModel(
        image: "assets/chicken_images/sausage.jpeg", name: "Chicken Sausage"),
    MeatCategoryModel(
        image: "assets/chicken_images/cknleg.jpg", name: "Chicken Legs"),
    MeatCategoryModel(image: "assets/chicken_images/bon.png", name: "Boneless"),
    MeatCategoryModel(
        image: "assets/chicken_images/wings.jpeg", name: "Chicken wings"),
    MeatCategoryModel(
        image: "assets/chicken_images/mince.jpg", name: "Chicken Mince"),
  ];
  List<MeatCategoryModel> _fishItems = [
    MeatCategoryModel(
        image: "assets/chicken_images/rohu_fish.jpg", name: "Rohu Fish"),
    MeatCategoryModel(
        image: "assets/chicken_images/naini_fish.jpeg", name: "Naini Fish"),
    MeatCategoryModel(
        image: "assets/chicken_images/bhakur.jpg", name: "Bhakur Fish"),
    MeatCategoryModel(
        image: "assets/chicken_images/trout.jpg", name: "Trout Fish"),
    MeatCategoryModel(
        image: "assets/chicken_images/commoncarp_fish.jpg",
        name: "Common Carp Fish"),
    MeatCategoryModel(
        image: "assets/chicken_images/grasscarp_fish.jpg",
        name: "Grass Carp Fish"),
    MeatCategoryModel(
        image: "assets/chicken_images/silvercarp_fish.jpg",
        name: "Silver Carp Fish"),
    MeatCategoryModel(
        image: "assets/chicken_images/rohu_fish.jpg", name: "others"),
  ];
  List<MeatCategoryModel> _muttonItems = [
    MeatCategoryModel(
        image: "assets/meat_shop_images/mutton.jpg", name: "Normal Mutton"),
  ];
  List<MeatCategoryModel> _buffItems = [
    MeatCategoryModel(
        image: "assets/meat_shop_images/buff.jpg", name: "Normal Buff"),
    MeatCategoryModel(
        image: "assets/chicken_images/sausage_buff.jpg", name: "Buff Sausage"),
    MeatCategoryModel(
        image: "assets/chicken_images/buff_mince.jpg", name: "Buff Mince"),
  ];
  List<MeatCategoryModel> _porkItems = [
    MeatCategoryModel(
        image: "assets/meat_shop_images/pork.jpg", name: "Normal Buff"),
  ];

  List<MeatCategoryModel> get items {
    return [
      ..._chickenItem,
    ];
  }

  List<MeatCategoryModel> get fitems {
    return [
      ..._fishItems,
    ];
  }

  List<MeatCategoryModel> get pitems {
    return [
      ..._porkItems,
    ];
  }

  List<MeatCategoryModel> get bitems {
    return [
      ..._buffItems,
    ];
  }

  List<MeatCategoryModel> get mitems {
    return [
      ..._muttonItems,
    ];
  }
}
