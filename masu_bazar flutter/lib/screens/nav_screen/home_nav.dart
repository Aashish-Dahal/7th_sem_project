import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/grid_list/grid_list.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SafeArea(
          child: Card(
            borderOnForeground: true,
            elevation: 4.0,
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Carousel(
                boxFit: BoxFit.fill,
                images: [
                  AssetImage('assets/images/ad2.jpg'),
                  AssetImage('assets/images/ad3.png'),
                  AssetImage('assets/images/ad4.jpeg')
                ],
                dotBgColor: Colors.transparent,
                autoplay: true,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 5.0,
                indicatorBgPadding: 2.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: CategoryList(),
          ),
        ),
      ],
    );
  }
}
