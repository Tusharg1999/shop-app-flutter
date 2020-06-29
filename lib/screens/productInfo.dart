import 'package:flutter/material.dart';
import 'package:shop/provider/productModel.dart';

class ProductInfo extends StatelessWidget {
  final ProductModel products;
  ProductInfo({this.products});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(products.title),
        ),
      ),
    );
  }
}
