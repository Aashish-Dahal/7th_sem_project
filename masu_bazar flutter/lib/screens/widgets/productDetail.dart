import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/widgets/cart.dart';

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
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.orange,
        title: Text(
          'Product Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border:
                    Border.all(color: Colors.black26, style: BorderStyle.solid),
                boxShadow: [
                  BoxShadow(color: Colors.black26, offset: Offset(0.0, 1.0)),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _ImageDetailSection(
                  image: widget.image,
                ),
                _TextDetailSection(name: widget.productName, context: context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _ImageDetailSection({
  String image,
}) {
  // return Container(width: 172, child: Image.asset(image));
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          // color: Colors.purple,
          borderRadius: BorderRadius.circular(12.0)),
      child: Container(child: Image.asset(image)),
    ),
  );
}

Widget _TextDetailSection({String name, BuildContext context}) {
  return Expanded(
    child: Container(
      height: 200,
      child: Column(
        //  crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Quantity:',
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                    height: 30,
                    width: 30,
                    child: IconButton(
                        icon: Icon(
                          Icons.remove,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    )),
                Text('0.0 kg'),
                Container(
                    height: 30,
                    width: 30,
                    child: IconButton(
                        icon: Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Price:',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text("_______"),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text(
                    'Delivery Charge:1',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text(
                    'Total Price:',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text('______'),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Cart(
                          productName: name,
                          quantity: 15,
                        )),
              );

              //  Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()),);
            },
            child: Container(
              height: 30,
              width: 150,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: Colors.black26, style: BorderStyle.solid),
                  boxShadow: [
                    BoxShadow(color: Colors.black26, offset: Offset(0.0, 1.0)),
                  ]),
              child: Center(
                  child: Text(
                'ADD CART',
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      ),
    ),
  );
}
