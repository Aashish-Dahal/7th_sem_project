import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/grid_list/grid_list.dart';
import 'package:masu_bazar/screens/nav_screen/slideCarousel.dart';

class MeatShopNavBarItem extends StatelessWidget {
  List<SlideCarouselImage> sliderImages = SlideCarouselImage.meatSliderImage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              borderOnForeground: true,
              elevation: 4.0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Carousel(
                  boxFit: BoxFit.fill,
                  images: sliderImages
                      .map((eachItem) => AssetImage(eachItem.images))
                      .toList(),
                  dotBgColor: Colors.transparent,
                  autoplay: true,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 5.0,
                  indicatorBgPadding: 2.0,
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
    );
  }
}
