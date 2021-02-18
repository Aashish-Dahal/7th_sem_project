import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/widgets/chickenItemModel/meatItemModel.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';

class Cart extends StatefulWidget {
  final String productName;
  final double quantity;
  final String image;
  final List<MeatItemModel> items;  
  const Cart({Key key, this.productName, this.quantity, this.image,this.items})
      : super(key: key);

    

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: white),
          title: Text(
            'Cart',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 3),
          child: Card(
            child: ListTile(
                leading: Card(
                  child: Container(
                      width: 70,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(widget.image),
                      )),
                ),
                title: Column(
                  //  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name: ',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          widget.productName,
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Quantity: ',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '15',
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Price: ',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '500',
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
                trailing: Icon(Icons.delete, color: red)),
          ),
        )));
  }
}

Widget _CartProductName({String name}) {
  return Container(
    margin: EdgeInsets.only(top: 8, bottom: 10, right: 10, left: 10),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(8.0)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Text(
            'Product Name:',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Text(name),
        )
      ],
    ),
  );
}

Widget _Quantity({quantity}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12.0)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Text(
            'Quantity:',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Text('$quantity'),
        )
      ],
    ),
  );
}
