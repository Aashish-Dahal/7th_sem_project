import 'package:flutter/material.dart';

class TabModel {
  final String title;
  final Image image;

  TabModel({this.title, this.image});
  static List<TabModel> khasiTabItemList = [
    TabModel(
        title: 'खसी',
        image: Image(
          image: AssetImage('assets/images/khasi.png'),
          height: 25,
          width: 25,
        )),
    TabModel(
        title: 'बोका',
        image: Image(
          image: AssetImage('assets/images/boka.png'),
          height: 25,
          width: 25,
        )),
    TabModel(
        title: 'बाख्रा',
        image: Image(
          image: AssetImage('assets/images/bakhri.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'च्यांग्रा',
        image: Image(
          image: AssetImage('assets/images/changra.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'भेडा',
        image: Image(
          image: AssetImage('assets/images/sheep.png'),
          height: 30,
          width: 30,
        )),
  ];
  static List<TabModel> bhaisiTabItemList = [
    TabModel(
        title: 'गाई',
        image: Image(
          image: AssetImage('assets/images/cow.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'भैंसी',
        image: Image(
          image: AssetImage('assets/images/bahisi.jpg'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'गोरू',
        image: Image(
          image: AssetImage('assets/images/goru.jpeg'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'राँगा',
        image: Image(
          image: AssetImage('assets/images/rango.png'),
          height: 30,
          width: 30,
        )),
  ];
  static List<TabModel> henTabItemList = [
    TabModel(
        title: 'लोकल',
        image: Image(
          image: AssetImage('assets/images/hen1.png'),
          width: 20,
          height: 20,
        )),
    TabModel(
        title: 'फार्म जातका',
        image: Image(
          image: AssetImage('assets/images/farm.png'),
          width: 25,
          height: 25,
        )),
    TabModel(
        title: 'हाँस',
        image: Image(
          image: AssetImage('assets/images/duck.jpg'),
          width: 30,
          height: 26,
        )),
    TabModel(
        title: 'लौकाट',
        image: Image(
          image: AssetImage('assets/images/laukat.jpg'),
          width: 30,
          height: 30,
        )),
    TabModel(
        title: 'बटाई',
        image: Image(
          image: AssetImage('assets/images/batai.png'),
          width: 30,
          height: 30,
        )),
    TabModel(
        title: 'टर्की',
        image: Image(
          image: AssetImage('assets/images/tarki.png'),
          width: 30,
          height: 30,
        )),
    TabModel(
        title: 'fancy कुखुरा',
        image: Image(
          image: AssetImage('assets/images/fancy.png'),
          width: 25,
          height: 25,
        )),
  ];
  static List<TabModel> birdTabItemList = [
    TabModel(
        title: 'परेवा',
        image: Image(
          image: AssetImage('assets/images/pigeon.png'),
          height: 25,
          width: 25,
        )),
    TabModel(
        title: 'सुगा',
        image: Image(
          image: AssetImage('assets/images/parrot.png'),
          height: 28,
          width: 28,
        )),
    TabModel(
        title: 'love Birds',
        image: Image(
          image: AssetImage('assets/images/lovebirds.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'अन्य',
        image: Image(
          image: AssetImage('assets/images/anya.jpg'),
          height: 28,
          width: 28,
        )),
  ];
  static List<TabModel> occusionTabItemList = [
    TabModel(
        title: 'कालो बोका',
        image: Image(
          image: AssetImage('assets/images/kaloboka.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'परेवा',
        image: Image(
          image: AssetImage('assets/images/pigeon.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'अन्य',
        image: Image(
          image: AssetImage('assets/category_list/pboka.png'),
          height: 30,
          width: 30,
        )),
  ];
  static List<TabModel> othersTabItemList = [
    TabModel(
        title: 'सुँगुर/बदेल',
        image: Image(
          image: AssetImage('assets/images/boar.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'खरायो',
        image: Image(
          image: AssetImage('assets/images/rabbit.png'),
          height: 25,
          width: 30,
        )),
    TabModel(
        title: 'कुकुर',
        image: Image(
          image: AssetImage('assets/images/dog.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'घोडा',
        image: Image(
          image: AssetImage('assets/images/horse.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        title: 'अन्य',
        image: Image(
          image: AssetImage('assets/images/anya.png'),
          height: 30,
          width: 30,
        )),
  ];
}
