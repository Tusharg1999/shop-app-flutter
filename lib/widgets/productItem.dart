import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/infra/routingConstants.dart';
import 'package:shop/provider/cart.dart';
import 'package:shop/provider/productModel.dart';

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
              leading: Consumer<ProductModel>(
                builder: (ctx, product, child) => IconButton(
                  icon: Icon(
                    product.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    product.favouriteHandler();
                  },
                ),
              ),
              title: Text(product.title),
              trailing: Consumer<Cart>(
                builder: (context, cart, child) => IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      cart.add(
                          price: product.price,
                          title: product.title,
                          productId: product.id);
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
