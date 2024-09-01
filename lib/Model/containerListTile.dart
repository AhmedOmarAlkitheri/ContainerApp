import 'package:flutter/material.dart';

class Containerlisttile {
  late String title, subtitle, image;
  late double price, PriceDiscount;
  List<Color> color = [];

  Containerlisttile(
      {required this.title,
      required this.subtitle,
      required this.image,
      required this.price,
      required this.PriceDiscount,
      required this.color});
}
