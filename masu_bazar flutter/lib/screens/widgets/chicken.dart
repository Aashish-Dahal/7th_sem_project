import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/widgets/chickenItemModel/chickenModel.dart';
import 'package:masu_bazar/screens/widgets/productDetail.dart';

class ChickenList extends StatelessWidget {
  final List<ChickenModel> _chickenItem = ChickenModel.getChickenItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0.0,
          title: Text(
            "Chicken Items",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.orange,
                  child: Image(
                    image: AssetImage('assets/images/logo1.png'),
                  )),
            ),
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: _chickenItem
              .map((item) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ProductDetails(
                                    image: item.image,
                                    productName: item.name,
                                  )));
                    },
                    child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.white38, offset: Offset(0.0, 20.0))
                        ]),
                        child: Card(
                          elevation: 10.0,
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
        ));
  }
}
