import 'package:flutter/material.dart';
import 'package:shop/infra/routingConstants.dart';
import 'package:shop/provider/productModel.dart';

class ProductMangementItems extends StatelessWidget {
  final ProductModel product;
  ProductMangementItems({@required this.product});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(EditProductRoute);
                }),
            IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
