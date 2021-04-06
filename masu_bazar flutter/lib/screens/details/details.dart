import 'package:flutter/material.dart';
import 'package:masu_bazar/Model/meatCategory.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';
import 'package:masu_bazar/screens/widgets/cart.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';
import 'package:masu_bazar/screens/widgets/map.dart';

class Details extends StatefulWidget {
  final MeatCategoryModel list;
  final title;
  final description;
  final image;
  final name;
  final price;
  final location;
  final weight;
  final date;
  final age;
  final pnumber;
  final snumber;
  final color;
  final daat;
  final title1;
  final title2;

  Details(
      {Key key,
      this.title1,
      this.title2,
      this.title,
      this.description,
      this.image,
      this.name,
      this.price,
      this.location,
      this.weight,
      this.date,
      this.age,
      this.pnumber,
      this.snumber,
      this.color,
      this.daat,
      this.list})
      : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<MeatCategoryModel> _cartList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: white),
        title: Text(
          widget.title,
          style: TextStyle(color: white),
        ),
        actions: [
          Search(),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: Stack(
              children: [
                if (_cartList.length > 0)
                  Padding(
                    padding: const EdgeInsets.only(right: 1, top: 5, left: 10),
                    child: CircleAvatar(
                      radius: 8.0,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text(
                        _cartList.length.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                print(_cartList.length);
              });
              if (_cartList.isNotEmpty)
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Cart(_cartList),
                  ),
                );
            },
          ),
          Padding(padding: EdgeInsets.all(8.0), child: null //Logout(),
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
                child: widget.title1 == "Product Information"
                    ? Image(
                        image: AssetImage(widget.image),
                        alignment: Alignment.topCenter,
                        width: 300,
                        height: 250,
                        fit: BoxFit.fill,
                      )
                    : Image(
                        image: AssetImage(widget.image),
                        alignment: Alignment.topCenter,
                        width: 300,
                        height: 250,
                        fit: BoxFit.contain,
                      )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 13.0, left: 20.0),
                height: 50,
                width: 188,
                child: widget.title1 == "Product Information"
                    ? Text(
                        "Qunatity: 10kg",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Weight=' + widget.weight.toString() + " kg",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
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
              Container(
                padding: EdgeInsets.only(top: 1.0, left: 5.0),
                margin: EdgeInsets.only(right: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    // border: Border.all(color: Colors.black26),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 0.0),
                      )
                    ]),
                height: 50,
                width: 160.5,
                child: widget.title1 == "Product Information"
                    ? IconButton(
                        alignment: Alignment.topCenter,
                        color: Colors.red,
                        icon: Icon(
                          Icons.add_shopping_cart,
                          size: 30.0,

                          //color: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            if (!_cartList.contains(widget.list))
                              _cartList.add(widget.list);
                            else {
                              _cartList.remove(widget.list);
                            }
                          });
                        })
                    : Text(
                        'Rs.' + widget.price.toString(),
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
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
                    '${widget.title1} :',
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
                  child: Text(widget.description,
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
                    '${widget.title2} :',
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
                  child: widget.title2 == "User Information"
                      ? Text(
                          "User Name : Rabin Shrestha ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Text(
                          "Seller Name : " + widget.name,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: widget.title2 == "User Information"
                      ? Text(
                          "Email : xhrrabin@gmail.com ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Row(
                        children: [
                          Text("Address : " ,

                          // + widget.location,
                              style: TextStyle(fontWeight: FontWeight.w500)),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>GoogleMapScreen()));
                                },
                                child: Image.asset('assets/images/map.png',height: 20,)),
                                SizedBox(width: 5),
                                Text(widget.location),
                        ],
                      ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: widget.title2 == "User Information"
                      ? Text(
                          "Address : Kathmandu ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Text("Date : " + widget.date.toString().split(" ")[0],
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: widget.title2 == "User Information"
                      ? Text(
                          "Phone : 9860123115 ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Text("Color : " + widget.color,
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: widget.daat == null
                      ? Container()
                      : Text("Satiyako_Daat : " + widget.daat.toString(),
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: widget.age == null
                      ? Container()
                      : Text("Age : " + widget.age.toString(),
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: widget.pnumber == null
                      ? Container()
                      : Text("Primary_Number : " + widget.pnumber.toString(),
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: widget.pnumber == null
                      ? Container()
                      : Text("Secondary_Number : " + widget.snumber.toString(),
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 5.0,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
