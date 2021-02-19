import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:masu_bazar/Provider/slideCarouselImageProvider.dart';
import 'package:masu_bazar/screens/grid_list/grid_list.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';
import 'package:provider/provider.dart';

class MeatShopNavBarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SlideCarouselImageProvider(),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2, left: 11, right: 11),
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(8)),
                height: 35,
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      'Search for meat products',
                      style: TextStyle(color: white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Card(
                  borderOnForeground: true,
                  elevation: 4.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Consumer<SlideCarouselImageProvider>(
                        builder: (context, value, child) {
                      return Carousel(
                        boxFit: BoxFit.fill,
                        images: value.meatCarousel
                            .map((eachItem) => AssetImage(eachItem.image))
                            .toList(),
                        dotBgColor: Colors.transparent,
                        autoplay: true,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 5.0,
                        indicatorBgPadding: 2.0,
                      );
                    }),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: MeatCatList(),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
