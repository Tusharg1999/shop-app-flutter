import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/products.dart';
import 'package:shop/widgets/appDrawer.dart';
import 'package:shop/widgets/productMangementItems.dart';

class ProductManger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context);
    return SafeArea(
        child: Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
        title: Text("Products Mangement"),
      ),
      body: Container(
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: products.getList.length,
              itemBuilder: (context, i) {
                return Column(
                  children: <Widget>[
                    ProductMangementItems(product: products.getList[i]),
                    Divider(),
                  ],
                );
              }),
        ),
      ),
    ));
  }
}
