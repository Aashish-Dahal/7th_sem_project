import 'package:flutter/material.dart';
import 'package:masu_bazar/AnimalInfo/animalInfo.dart';

class DomAnimalList extends StatefulWidget {
  @override
  _DomAnimalListState createState() => _DomAnimalListState();
}

class _DomAnimalListState extends State<DomAnimalList> {
  int _currentChild = 0;
  final List<AnimalInfo> getAnimalsList = AnimalInfo.animalListInfo;
  final List<Widget> animalTabController = AnimalInfo.getAnimalsTabList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: getAnimalsList.length,
      semanticChildCount: _currentChild,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2.17),
      itemBuilder: (context, int index) {
        return InkWell(
          onTap: () {
            setState(() {
              _currentChild = index;
              if (_currentChild == index) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => animalTabController[index]));
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.black26),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image(
                      fit: BoxFit.fill,
                      height: 90,
                      width:161,
                      image: AssetImage(getAnimalsList[index].image)),
                ),
                Divider(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, top: 2),
                  child: Text(
                    getAnimalsList[index].name,
                    style:
                        TextStyle(fontSize: 14.5, fontWeight: FontWeight.w500),
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
