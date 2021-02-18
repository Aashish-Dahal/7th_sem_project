import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/meatCategory.dart';
import 'package:masu_bazar/screens/details/details.dart';

class ProductGrid extends StatelessWidget {
  final List<MeatCategoryModel> pList;
  const ProductGrid({Key key, this.pList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: pList
          .map((item) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Details(
                                title: item.name,
                                image: item.image,
                                description: item.name,
                                title1: "Product Information",
                                title2: "User Information",
                              )));
                },
                child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white38, offset: Offset(0.0, 20.0))
                    ]),
                    child: Card(
                      elevation: 1.0,
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage(item.image),
                            height: 140,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            item.name,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    )),
              ))
          .toList(),
    );
  }
}
