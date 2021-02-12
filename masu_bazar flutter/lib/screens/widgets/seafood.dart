import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/widgets/chickenItemModel/meatItemModel.dart';
import 'package:masu_bazar/screens/widgets/productGrid.dart';

class FishList extends StatelessWidget {
  final List<MeatItemModel> _FishItem = MeatItemModel.getFishItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0.0,
          title: Text(
            "Fish Items",
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
        body: ProductGrid(
          pList: _FishItem,
        ));
  }
}
