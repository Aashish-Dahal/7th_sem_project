import 'package:flutter/cupertino.dart';
import 'package:masu_bazar/screens/grid_list/grid_list.dart';
import 'package:masu_bazar/screens/widgets/buff.dart';
import 'package:masu_bazar/screens/widgets/chicken.dart';
import 'package:masu_bazar/screens/widgets/deal_day.dart';
import 'package:masu_bazar/screens/widgets/mutton.dart';
import 'package:masu_bazar/screens/widgets/pork.dart';
import 'package:masu_bazar/screens/widgets/seafood.dart';

class AnimalInfo {
  final String image;
  final String name;
  final String titleName;

  AnimalInfo({
    @required this.image,
    @required this.name,
    this.titleName,
  });

  static List<AnimalInfo> animalListInfo = [
    AnimalInfo(
        image: "assets/category_list/boka.png",
        name: "खसी/बाख्रो",
        titleName: "खसीको प्रजाति"),
    AnimalInfo(
        image: "assets/category_list/mura.png",
        name: "गाई/भैंसी",
        titleName: "गाई/भैंसीको प्रजाति"),
    AnimalInfo(
        image: "assets/category_list/chicken.png",
        name: "कुखुरा",
        titleName: "कुखुराको प्रजाति "),
    AnimalInfo(
        image: "assets/category_list/suga.png",
        name: "चराहरु",
        titleName: "चराको प्रजाति"),
    AnimalInfo(
        image: "assets/category_list/pboka.png",
        name: "भाकल/ पुजा",
        titleName: "भाकलको प्रजाति"),
    AnimalInfo(
        image: "assets/category_list/anya.jpg",
        name: "अन्य",
        titleName: "अन्य प्रजाति")
  ];

  static List<AnimalInfo> animalMeatInfo = [
    AnimalInfo(
        image: "assets/meat_shop_images/deal.jpg",
        name: "Deal of the day",
        titleName: "Deal of the day"),
    AnimalInfo(
        image: "assets/meat_shop_images/chicken.jpg",
        name: "Chicken",
        titleName: "Chicken Items"),
    AnimalInfo(
        image: "assets/meat_shop_images/mutton.jpg",
        name: "Mutton",
        titleName: "Mutton Items"),
    AnimalInfo(
        image: "assets/meat_shop_images/fish.jpg",
        name: "Seafood",
        titleName: "Seafood Items"),
    AnimalInfo(
        image: "assets/meat_shop_images/pork.jpg",
        name: "Pork",
        titleName: "Pork Items"),
    AnimalInfo(
        image: "assets/meat_shop_images/buff.jpg",
        name: "Buff",
        titleName: "Buff Items"),
    AnimalInfo(
        image: "assets/meat_shop_images/local.jpg",
        name: "Local",
        titleName: "Local Items"),
    AnimalInfo(
        image: "assets/meat_shop_images/chicken.jpg",
        name: "Anya",
        titleName: "Anya Items"),
  ];
  static List<Widget> getAnimalsTabList = [
    KhasiTabList(
      title: 'खसीको प्रजाति',
    ),
    RagaTabList(
      title: 'राँगाको प्रजाति',
    ),
    KukhuraTabList(
      title: 'कुखुराको प्रजाति',
    ),
    BirdTabList(
      title: 'चराको प्रजाति',
    ),
    VakalTabList(
      title: 'भाकलको प्रजाति',
    ),
    AnyaTabList(
      title: 'अन्य प्रजाति',
    ),
  ];
  static List<Widget> getMeatTabList = [
    DealList(),
    ChickenList(),
    MuttonList(),
    FishList(),
    PorkList(),
    BuffList(),
  ];
}
