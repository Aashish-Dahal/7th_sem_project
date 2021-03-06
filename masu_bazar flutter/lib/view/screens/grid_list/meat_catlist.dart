import 'package:flutter/material.dart';
import 'package:masu_bazar/controller/Provider/cprovider.dart';
import 'package:provider/provider.dart';

class MeatCatList extends StatelessWidget {
  int _currentChild = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MeatInfoProvider(),
      child: Consumer<MeatInfoProvider>(
        builder: (context, value, child) {
          return GridView.builder(
            itemCount: value.items.length,
            semanticChildCount: _currentChild,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2.15),
            itemBuilder: (context, int index) {
              return InkWell(
                onTap: () {
                  _currentChild = index;
                  if (_currentChild == index) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => value.tabItems[index]));
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image(
                            fit: BoxFit.fill,
                            height: 90,
                            width: 161,
                            image: AssetImage(value.items[index].image)),
                      ),
                      Divider(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0, top: 2),
                        child: Text(
                          value.items[index].name,
                          style: TextStyle(
                              fontSize: 14.5, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
