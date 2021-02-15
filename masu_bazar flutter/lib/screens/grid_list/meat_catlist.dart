import 'package:flutter/material.dart';
import 'package:masu_bazar/AnimalInfo/animalInfo.dart';

class MeatCatList extends StatefulWidget {
  @override
  _MeatCatListState createState() => _MeatCatListState();
}

class _MeatCatListState extends State<MeatCatList> {
  int _currentChild = 0;
  List<Widget> meatTabListController = AnimalInfo.getMeatTabList;
  List<AnimalInfo> getMeatList = AnimalInfo.animalMeatInfo;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: getMeatList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2.15),
      itemBuilder: (context, int index) {
        return InkWell(
          onTap: () {
            setState(() {
              _currentChild = index;
              if (_currentChild == index) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => meatTabListController[index]));
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image(
                      width: 161,
                      height: 90,
                      fit: BoxFit.fill,
                      image: AssetImage(getMeatList[index].image)),
                ),
                Divider(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, top: 2),
                  child: Text(
                    getMeatList[index].name,
                    style:
                        TextStyle(fontSize: 14.5, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
