import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/animal.dart';
import 'package:masu_bazar/screens/grid_list/grid_list.dart';

class AnimalsInfoProvider extends ChangeNotifier {
  List<MeatProduct> _animalListInfo = [
    MeatProduct(
        image: "assets/category_list/khasi.png",
        name: "खसी/बाख्रो",
        titleName: "खसीको प्रजाति"),
    MeatProduct(
        image: "assets/category_list/buffalo.png",
        name: "गाई/भैंसी",
        titleName: "गाई/भैंसीको प्रजाति"),
    MeatProduct(
        image: "assets/category_list/hen.png",
        name: "कुखुरा",
        titleName: "कुखुराको प्रजाति "),
    MeatProduct(
        image: "assets/category_list/birds.png",
        name: "चराहरु",
        titleName: "चराको प्रजाति"),
    MeatProduct(
        image: "assets/category_list/boka.png",
        name: "भाकल/ पुजा",
        titleName: "भाकलको प्रजाति"),
    MeatProduct(
        image: "assets/category_list/anya.png",
        name: "अन्य",
        titleName: "अन्य प्रजाति")
  ];

  List<MeatProduct> get items {
    return [..._animalListInfo];
  }

  addProduct() {
    notifyListeners();
  }

  List<Widget> getAnimalsTabList = [
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
  List<Widget> get tabItems {
    return [...getAnimalsTabList];
  }
}
