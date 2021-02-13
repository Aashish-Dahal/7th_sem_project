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
    return Scaffold(
      body: GridView.builder(
        itemCount: getMeatList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.3),
        itemBuilder: (context, int index) {
          return GestureDetector(
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
            child: MeatCategoryNameList(
              cat_image: getMeatList[index].image,
              cat_title: getMeatList[index].name,
              cat_text_title: getMeatList[index].titleName,
            ),
          );
        },
      ),
    );
  }
}

class MeatCategoryNameList extends StatelessWidget {
  final cat_image;
  final cat_title;
  final cat_text_title;
  const MeatCategoryNameList({
    Key key,
    this.cat_image,
    this.cat_title,
    this.cat_text_title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 35.0,
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 90,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: Colors.black26, style: BorderStyle.solid),
                  boxShadow: [
                    BoxShadow(color: Colors.black26, offset: Offset(0.0, 0.0)),
                  ]),
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      cat_title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Colors.black26, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.transparent, offset: Offset(0.0, 0.0)),
                ]),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Image(
                  width: 160,
                  height: 90,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    cat_image,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
