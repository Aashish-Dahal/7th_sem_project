import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';
import 'package:masu_bazar/screens/widgets/cart.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';

class ProductDetails extends StatefulWidget {
  final String productName;
  final String image;

  const ProductDetails({Key key, this.productName, this.image}) : super(key: key);



  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
   
        return Scaffold(
          appBar:  AppBar(
            iconTheme: IconThemeData(color: white),
        title: Text(widget.productName,style: TextStyle(color:white),),
        actions: <Widget>[
        
          new Stack(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.shopping_cart_outlined,color: white,), onPressed: () {
              
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart(productName: widget.productName,quantity: 100,image: widget.image,)),);
               
                  //  Cart();
              
              }),
              counter != 0 ? new Positioned(
                right: 11,
                top: 11,
                child: new Container(
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) : new Container()
            ],
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 3.0, right: 3.0),
            child: Card(
              
                borderOnForeground: true,
                // elevation: 3.0,
                clipBehavior: Clip.antiAlias,
                child: Image(
                  image: AssetImage(widget.image),
                  alignment: Alignment.topCenter,
                  width: 300,
                  height: 235,
                  fit: BoxFit.fill,
                )),
          ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 13.0, left: 20.0),
                height: 50,
                width: 188,
                child: Text(
                  "Quantity:",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    // border: Border.all(color: Colors.black26),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 0.0),
                      )
                    ]),
              ),
              SizedBox(width:35),
              RaisedButton(
               color: orange,
                child: Text('Add to cart',style:TextStyle(color:white)),
                onPressed: (){
                  setState(() {
                    //
                  });
                },
                ),
           
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // border: Border.all(color: Colors.black26),
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 0.0),
                  )
                ]),
            width: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    'Product Details:',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: Text("Product Name: "+widget.productName,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 5.0,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // border: Border.all(color: Colors.black26),
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 0.0),
                  )
                ]),
            width: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    'User Information :',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: Text(
                    "User Name : Rabin Shrestha ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: Text("Email : xhrrabin@gmail.com" ,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: Text(
                      "Address: Budhanilkantha" ,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: Text("Phone no : 9860123115" ,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),

                SizedBox(
                  height: 5.0,
                )
               
                
               
                
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:masu_bazar/screens/widgets/cart.dart';

// class ProductDetails extends StatefulWidget {
//   final String productName;
//   final String image;

//   const ProductDetails({Key key, this.productName, this.image})
//       : super(key: key);

//   @override
//   _PrductDetailsState createState() => _PrductDetailsState();
// }

// class _PrductDetailsState extends State<ProductDetails> {
//   double _quantity = 0.0;
//   double _price = 300;
//   double delCharge = 10;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//         backgroundColor: Colors.orange,
//         title: Text(
//           'Product Details',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 5, right: 5),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10.0),
//                 border:
//                     Border.all(color: Colors.black26, style: BorderStyle.solid),
//                 boxShadow: [
//                   BoxShadow(color: Colors.black26, offset: Offset(0.0, 1.0)),
//                 ]),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [

//                 _ImageDetailSection(image: widget.image),
//                 Expanded(
//                   child: Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           child: Text(
//                             widget.productName,
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top: 5),
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.black12),
//                               // color: Colors.purple,
//                               borderRadius: BorderRadius.circular(12.0)),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Text(
//                                 'Quantity:',
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                               // Container(
//                               //     height: 30,
//                               //     width: 30,
//                               //     child: IconButton(
//                               //         icon: Icon(
//                               //           Icons.remove,
//                               //           size: 15,
//                               //           color: Colors.white,
//                               //         ),
//                               //         onPressed: () {
//                               //           setState(() {
//                               //             if (_quantity > 1) {
//                               //               _quantity -= 0.5;
//                               //             } else {
//                               //               //nothing
//                               //             }
//                               //           });
//                               //         }),
//                               //     decoration: BoxDecoration(
//                               //       color: Colors.orange,
//                               //       borderRadius: BorderRadius.circular(50),
//                               //     )),
//                               Container(
//                                   width: 30,
//                                   height: 30,
//                                   child: TextFormField(
//                                     textAlignVertical: TextAlignVertical.bottom,
//                                     textAlign: TextAlign.center,
//                                     cursorColor: Colors.black,
//                                   )),
//                               // Text('$_quantity kg'),
//                               // Container(
//                               //     height: 30,
//                               //     width: 30,
//                               //     child: IconButton(
//                               //         icon: Icon(
//                               //           Icons.add,
//                               //           size: 15,
//                               //           color: Colors.white,
//                               //         ),
//                               //         onPressed: () {
//                               //           setState(() {
//                               //             _quantity += 0.5;
//                               //           });
//                               //         }),
//                               //     decoration: BoxDecoration(
//                               //       color: Colors.orange,
//                               //       borderRadius: BorderRadius.circular(50),
//                               //     )),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top: 5),
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.black12),
//                               // color: Colors.purple,
//                               borderRadius: BorderRadius.circular(12.0)),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 8.0),
//                                 child: Text(
//                                   'Price:',
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 8.0),
//                                 child: Text(
//                                     '${_priceIncrement(price: _price, quantity: _quantity)} '),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top: 5),
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.black12),
//                               // color: Colors.purple,
//                               borderRadius: BorderRadius.circular(12.0)),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 8.0, left: 8.0),
//                                 child: Text(
//                                   'Delivery Charge: $delCharge',
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top: 5),
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.black12),
//                               // color: Colors.purple,
//                               borderRadius: BorderRadius.circular(12.0)),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 8.0, left: 8.0),
//                                 child: Text(
//                                   'Total Price:',
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 8.0, left: 8.0),
//                                 child: Text(
//                                     '${_totalPriceIncrement(price: _priceIncrement(price: _price, quantity: _quantity), Tquantity: _quantity, delCharge: delCharge)}'),
//                               )
//                             ],
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (_)=>Cart()),);
//                           },
//                           child: Container(
//                             height: 30,
//                             width: 150,
//                             margin: EdgeInsets.only(top: 15),
//                             decoration: BoxDecoration(
//                                 color: Colors.orange,
//                                 borderRadius: BorderRadius.circular(10.0),
//                                 border: Border.all(
//                                     color: Colors.black26,
//                                     style: BorderStyle.solid),
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.black26,
//                                       offset: Offset(0.0, 1.0)),
//                                 ]),
//                             child: Center(
//                                 child: Text(
//                               'CONFIRM ORDER',
//                               style: TextStyle(color: Colors.white),
//                             )),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// Widget _ImageDetailSection({
//   String image,
// }) {
//   // return Container(width: 172, child: Image.asset(image));
//   return Expanded(
//     child: Container(
//       decoration: BoxDecoration(
//           border: Border.all(color: Colors.black12),
//           // color: Colors.purple,
//           borderRadius: BorderRadius.circular(12.0)),
//       child: Container(child: Image.asset(image)),
//     ),
//   );
// }


// double _priceIncrement({double price, quantity}) {
//   price = quantity * price;
//   return price;
// }

// double _totalPriceIncrement(
//     {double Tprice = 0.0, double price, double Tquantity, double delCharge}) {
//   Tprice = Tprice + price + delCharge;
//   return Tprice;
// }
