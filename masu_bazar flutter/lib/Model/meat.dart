import 'package:flutter/material.dart';

class MeatProduct {
  final String image;
  final String name;
  final String titleName;

  MeatProduct({
    @required this.image,
    @required this.name,
    this.titleName,
  });
}
