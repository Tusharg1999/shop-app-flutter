import 'package:flutter/material.dart';
import 'package:shop/infra/routingConstants.dart';
import 'package:shop/models/productModel.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  ProductItem({@required this.product});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductInfoRoute, arguments: product);
          },
          child: GridTile(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black38,
              leading: IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              title: Text(product.title),
              trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart), onPressed: () {}),
            ),
          ),
        ),
      ),
    );
  }
}
