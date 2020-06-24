import 'package:flutter/material.dart';
import 'package:shop/models/productModel.dart';

class ProductInfo extends StatelessWidget {
  final ProductModel products;
  ProductInfo({this.products});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(products.title),
        ),
      ),
    );
  }
}
