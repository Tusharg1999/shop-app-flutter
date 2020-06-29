import 'package:flutter/material.dart';
import 'package:shop/provider/cart.dart';

class CartListItem extends StatelessWidget {
  final CartItem cartItem;
  CartListItem({@required this.cartItem});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: FittedBox(child: Text(cartItem.price.toString())),
            ),
            title: Text(cartItem.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            trailing: Text(cartItem.quantity.toString()),
          ),
        ),
      ),
    );
  }
}
