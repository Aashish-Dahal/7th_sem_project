import 'package:flutter/material.dart';
import 'package:masu_bazar/AnimalInfo/animalInfo.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _currentChild = 0;
  final List<AnimalInfo> getAnimalsList = AnimalInfo.animalListInfo;
  final List<Widget> animalTabController = AnimalInfo.getAnimalsTabList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GridView.builder(
        itemCount: getAnimalsList.length,
        semanticChildCount: _currentChild,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2.1),
        itemBuilder: (context, int index) {
          return GestureDetector(
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
                  border: Border.all(color: Colors.black26),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image(
                        height: 85,
                        image: AssetImage(getAnimalsList[index].image)),
                  ),
                  Divider(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0, top: 2),
                    child: Text(
                      getAnimalsList[index].name,
                      style: TextStyle(
                          fontSize: 14.5, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
