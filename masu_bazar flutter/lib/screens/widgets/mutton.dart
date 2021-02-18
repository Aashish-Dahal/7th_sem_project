import 'package:flutter/material.dart';
import 'package:masu_bazar/Provider/meatCategoryProvider.dart';
import 'package:masu_bazar/screens/widgets/productGrid.dart';
import 'package:provider/provider.dart';

class MuttonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MeatCategoryProvider(),
      child: Consumer<MeatCategoryProvider>(builder: (context, value, child) {
        return Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Colors.orange,
              elevation: 0.0,
              title: Text(
                "Mutton Items",
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
              pList: value.mitems,
            ));
      }),
    );
  }
}
