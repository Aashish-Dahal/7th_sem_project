import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String productName;
  final String image;

  const ProductDetails({Key key, this.productName, this.image})
      : super(key: key);

  @override
  _PrductDetailsState createState() => _PrductDetailsState();
}

class _PrductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                _ImageDetailSection(image: widget.image),
                _TextDetailSection(name: widget.productName),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _ImageDetailSection({String image}) {
  return Container(width: 172, child: Image.asset(image));
}

Widget _TextDetailSection({String name}) {
  return Column(
    children: [
      Container(
          margin: EdgeInsets.only(bottom: 150, left: 8), child: Text(name)),
    ],
  );
}
