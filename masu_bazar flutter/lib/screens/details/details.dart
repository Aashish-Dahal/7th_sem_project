import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';

class Details extends StatelessWidget {
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
      this.daat})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: white),
        title: Text(
          title,
          style: TextStyle(color: white),
        ),
        actions: [
          Search(),
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
                child: title1 == "Product Information"
                    ? Image(
                        image: AssetImage(image),
                        alignment: Alignment.topCenter,
                        width: 300,
                        height: 250,
                        fit: BoxFit.fill,
                      )
                    : Image(
                        image: AssetImage(image),
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
                child: title1 == "Product Information"
                    ? Text(
                        "Qunatity: 10kg",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Weight=' + weight.toString() + " kg",
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
                padding: EdgeInsets.only(top: 13.0, left: 45.0),
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
                child: Text(
                  'Rs.' + price.toString(),
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
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
                    '$title1 :',
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
                  child: Text(description,
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
                    '$title2 :',
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
                  child: title2 == "User Information"
                      ? Text(
                          "User Name : Rabin Shrestha ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Text(
                          "Seller Name : " + name,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: title2 == "User Information"
                      ? Text(
                          "Email : xhrrabin@gmail.com ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Text("Address : " + location,
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: title2 == "User Information"
                      ? Text(
                          "Address : Kathmandu ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Text("Date : " + date.toString().split(" ")[0],
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: title2 == "User Information"
                      ? Text(
                          "Phone : 9860123115 ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      : Text("Color : " + color,
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: daat == null
                      ? Container()
                      : Text("Satiyako_Daat : " + daat.toString(),
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: age == null
                      ? Container()
                      : Text("Age : " + age.toString(),
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: pnumber == null
                      ? Container()
                      : Text("Primary_Number : " + pnumber.toString(),
                          style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 5.0),
                  child: pnumber == null
                      ? Container()
                      : Text("Secondary_Number : " + snumber.toString(),
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
