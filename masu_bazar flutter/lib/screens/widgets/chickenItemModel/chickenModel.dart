import 'package:flutter/material.dart';

class ChickenModel {
  static List<ChickenModel> getChickenItems = [
    ChickenModel(
        image: "assets/chicken_images/nrmlckn.jpg", name: "Normal Chicken"),
    ChickenModel(
        image: "assets/chicken_images/sausage.jpeg", name: "Chicken Sausage"),
    ChickenModel(
        image: "assets/chicken_images/cknleg.jpg", name: "Chicken Legs"),
    ChickenModel(image: "assets/chicken_images/bon.png", name: "Boneless"),
    ChickenModel(
        image: "assets/chicken_images/wings.jpeg", name: "Chicken wings"),
    ChickenModel(
        image: "assets/chicken_images/mince.jpg", name: "Chicken Mince"),
  ];

  final String image;
  final String name;

  ChickenModel({@required this.image, @required this.name});
}
