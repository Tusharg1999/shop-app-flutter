import 'package:flutter/material.dart';

class ProductModel {
  String id;
  String title;
  String description;
  num price;
  String imageUrl;
  bool isFavourite;

  ProductModel(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavourite});
}
