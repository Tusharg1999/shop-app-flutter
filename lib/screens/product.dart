import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/cart.dart';
import 'package:shop/provider/products.dart';
import 'package:shop/widgets/badge.dart';
import 'package:shop/widgets/productItem.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductsProvider>(context);
    final productList = productData.getList;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flipkart"),
          leading: Consumer<Cart>(
            builder: (context, cart, ch) => Badge(
              child: ch,
              value: cart.itemsLength.toString(),
            ),
            child:
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ),
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
                return ChangeNotifierProvider.value(
                    value: productList[i],
                    child: ProductItem(product: productList[i]));
              }),
        ),
      ),
    );
  }
}
