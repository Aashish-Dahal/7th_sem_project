import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/tab.dart';

class TabProvider extends ChangeNotifier {
  List<TabModel> _khasiTabItemList = [
    TabModel(
        tabName: 'खसी',
        image: Image(
          image: AssetImage('assets/images/khasi.png'),
          height: 25,
          width: 25,
        )),
    TabModel(
        tabName: 'बोका',
        image: Image(
          image: AssetImage('assets/images/boka.png'),
          height: 25,
          width: 25,
        )),
    TabModel(
        tabName: 'बाख्रा',
        image: Image(
          image: AssetImage('assets/images/bakhri.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'च्यांग्रा',
        image: Image(
          image: AssetImage('assets/images/changra.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'भेडा',
        image: Image(
          image: AssetImage('assets/images/sheep.png'),
          height: 30,
          width: 30,
        )),
  ];
  List<TabModel> _bhaisiTabItemList = [
    TabModel(
        tabName: 'गाई',
        image: Image(
          image: AssetImage('assets/images/cow.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'भैंसी',
        image: Image(
          image: AssetImage('assets/images/bahisi.jpg'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'गोरू',
        image: Image(
          image: AssetImage('assets/images/goru.jpeg'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'राँगा',
        image: Image(
          image: AssetImage('assets/images/rango.png'),
          height: 30,
          width: 30,
        )),
  ];
  List<TabModel> _henTabItemList = [
    TabModel(
        tabName: 'लोकल',
        image: Image(
          image: AssetImage('assets/images/hen1.png'),
          width: 20,
          height: 20,
        )),
    TabModel(
        tabName: 'फार्म जातका',
        image: Image(
          image: AssetImage('assets/images/farm.png'),
          width: 25,
          height: 25,
        )),
    TabModel(
        tabName: 'हाँस',
        image: Image(
          image: AssetImage('assets/images/duck.jpg'),
          width: 30,
          height: 26,
        )),
    TabModel(
        tabName: 'लौकाट',
        image: Image(
          image: AssetImage('assets/images/laukat.jpg'),
          width: 30,
          height: 30,
        )),
    TabModel(
        tabName: 'बटाई',
        image: Image(
          image: AssetImage('assets/images/batai.png'),
          width: 30,
          height: 30,
        )),
    TabModel(
        tabName: 'टर्की',
        image: Image(
          image: AssetImage('assets/images/tarki.png'),
          width: 30,
          height: 30,
        )),
    TabModel(
        tabName: 'fancy कुखुरा',
        image: Image(
          image: AssetImage('assets/images/fancy.png'),
          width: 25,
          height: 25,
        )),
  ];
  List<TabModel> _birdTabItemList = [
    TabModel(
        tabName: 'परेवा',
        image: Image(
          image: AssetImage('assets/images/pigeon.png'),
          height: 25,
          width: 25,
        )),
    TabModel(
        tabName: 'सुगा',
        image: Image(
          image: AssetImage('assets/images/parrot.png'),
          height: 28,
          width: 28,
        )),
    TabModel(
        tabName: 'love Birds',
        image: Image(
          image: AssetImage('assets/images/lovebirds.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'अन्य',
        image: Image(
          image: AssetImage('assets/images/anya.jpg'),
          height: 28,
          width: 28,
        )),
  ];
  List<TabModel> _occasionTabItemList = [
    TabModel(
        tabName: 'कालो बोका',
        image: Image(
          image: AssetImage('assets/images/kaloboka.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'परेवा',
        image: Image(
          image: AssetImage('assets/images/pigeon.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'अन्य',
        image: Image(
          image: AssetImage('assets/category_list/pboka.png'),
          height: 30,
          width: 30,
        )),
  ];
  List<TabModel> _othersTabItemList = [
    TabModel(
        tabName: 'सुँगुर/बदेल',
        image: Image(
          image: AssetImage('assets/images/boar.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'खरायो',
        image: Image(
          image: AssetImage('assets/images/rabbit.png'),
          height: 25,
          width: 30,
        )),
    TabModel(
        tabName: 'कुकुर',
        image: Image(
          image: AssetImage('assets/images/dog.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'घोडा',
        image: Image(
          image: AssetImage('assets/images/horse.png'),
          height: 30,
          width: 30,
        )),
    TabModel(
        tabName: 'अन्य',
        image: Image(
          image: AssetImage('assets/images/anya.png'),
          height: 30,
          width: 30,
        )),
  ];

  List<TabModel> get khasiTabItems {
    return [..._khasiTabItemList];
  }

  List<TabModel> get bhaisiTabItems {
    return [..._bhaisiTabItemList];
  }

  List<TabModel> get henTabItems {
    return [..._henTabItemList];
  }

  List<TabModel> get birdTabItems {
    return [..._birdTabItemList];
  }

  List<TabModel> get occasionTabItems {
    return [..._occasionTabItemList];
  }

  List<TabModel> get otherTabItems {
    return [..._othersTabItemList];
  }
}
