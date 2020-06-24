import 'package:flutter/material.dart';
import 'package:shop/data/productData.dart';
import 'package:shop/models/productModel.dart';
import 'package:shop/widgets/productItem.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    List<ProductModel> productList = getProductList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flipkart"),
        ),
        body: Container(
          child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 2),
              itemCount: productList.length,
              itemBuilder: (context, i) {
                return ProductItem(product: productList[i]);
              }),
        ),
      ),
    );
  }
}
