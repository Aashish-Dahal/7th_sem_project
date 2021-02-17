import 'package:flutter/material.dart';
import 'package:masu_bazar/screens/login/login.dart';
import 'package:masu_bazar/screens/widgets/appbar.dart';
import 'package:masu_bazar/screens/widgets/colors.dart';
import 'nav_screen.dart';

class AddNavBarItemButton extends StatelessWidget {
  final String id;
  final String title;
  final String category;
  final String shortDescription;
  final int estimatedWeight;
  final int price;
  final String color;
  final int daat;
  final String ownerName;
  final String address;
  final int primaryContactNo;
  final int secondaryContactNo;
  final int age;
  final String khasiImage;

  const AddNavBarItemButton(
      {Key key,
      this.id,
      this.title,
      this.category,
      this.shortDescription,
      this.estimatedWeight,
      this.price,
      this.color,
      this.daat,
      this.ownerName,
      this.address,
      this.primaryContactNo,
      this.secondaryContactNo,
      this.age,
      this.khasiImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Add",style: TextStyle(color: white),),
        ),
        actions: [
          Search(),
          Padding(padding: EdgeInsets.all(8.0), child: null //Logout(),
              ),
        ],
      ),
      body: SafeArea(
        child: FormFields(
          id: id,
          title: title,
          shortDescription: shortDescription,
          estimatedWeight: estimatedWeight,
          price: price,
          color: color,
          daat: daat,
          ownerName: ownerName,
          address: address,
          primaryContactNo: primaryContactNo,
          secondaryContactNo: secondaryContactNo,
          age: age,
          khasiImage: khasiImage,
        ),
      ),
    );
  }
}
