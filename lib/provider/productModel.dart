import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  String id;
  String title;
  String description;
  num price;
  String imageUrl;
  bool isFavourite = false;

  ProductModel(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavourite = false});

  favouriteHandler() {
    this.isFavourite = !this.isFavourite;
    notifyListeners();
  }
}
