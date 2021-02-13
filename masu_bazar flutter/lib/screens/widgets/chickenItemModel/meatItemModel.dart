import 'package:flutter/material.dart';

class MeatItemModel {
  static List<MeatItemModel> getChickenItems = [
    MeatItemModel(
        image: "assets/chicken_images/nrmlckn.jpg", name: "Normal Chicken"),
    MeatItemModel(
        image: "assets/chicken_images/sausage.jpeg", name: "Chicken Sausage"),
    MeatItemModel(
        image: "assets/chicken_images/cknleg.jpg", name: "Chicken Legs"),
    MeatItemModel(image: "assets/chicken_images/bon.png", name: "Boneless"),
    MeatItemModel(
        image: "assets/chicken_images/wings.jpeg", name: "Chicken wings"),
    MeatItemModel(
        image: "assets/chicken_images/mince.jpg", name: "Chicken Mince"),
  ];
  static List<MeatItemModel> getFishItems = [
    MeatItemModel(
        image: "assets/chicken_images/rohu_fish.jpg", name: "Rohu Fish"),
    MeatItemModel(
        image: "assets/chicken_images/naini_fish.jpeg", name: "Naini Fish"),
    MeatItemModel(
        image: "assets/chicken_images/bhakur.jpg", name: "Bhakur Fish"),
    MeatItemModel(image: "assets/chicken_images/trout.jpg", name: "Trout Fish"),
    MeatItemModel(
        image: "assets/chicken_images/commoncarp_fish.jpg",
        name: "Common Carp Fish"),
    MeatItemModel(
        image: "assets/chicken_images/grasscarp_fish.jpg",
        name: "Grass Carp Fish"),
    MeatItemModel(
        image: "assets/chicken_images/silvercarp_fish.jpg",
        name: "Silver Carp Fish"),
    MeatItemModel(image: "assets/chicken_images/rohu_fish.jpg", name: "others"),
  ];
  static List<MeatItemModel> getMuttonItems = [
    MeatItemModel(
        image: "assets/meat_shop_images/mutton.jpg", name: "Normal Mutton"),
  ];
  static List<MeatItemModel> getBuffItems = [
    MeatItemModel(
        image: "assets/meat_shop_images/buff.jpg", name: "Normal Buff"),
    MeatItemModel(
        image: "assets/chicken_images/sausage_buff.jpg", name: "Buff Sausage"),
    MeatItemModel(
        image: "assets/chicken_images/buff_mince.jpg", name: "Buff Mince"),
  ];
  static List<MeatItemModel> getPorkItems = [
    MeatItemModel(
        image: "assets/meat_shop_images/pork.jpg", name: "Normal Buff"),
  ];

  final String image;
  final String name;

  MeatItemModel({@required this.image, @required this.name});
}
