import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/cart.dart';

class CartListItem extends StatelessWidget {
  final CartItem cartItem;
  final dynamic productId;
  CartListItem({@required this.cartItem, @required this.productId});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(cartItem.id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.red,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Container(
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
      ),
    );
  }
}
