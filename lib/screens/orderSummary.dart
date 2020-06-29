import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/cart.dart';
import 'package:shop/widgets/cartListItem.dart';

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Order Summary"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Chip(
                      backgroundColor: Theme.of(context).primaryColor,
                      label: Text(
                        "${cart.itemsTotal.toString()} \$",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    FlatButton(onPressed: () {}, child: Text("Order Now")),
                  ],
                ),
              ),
            ),
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: cart.itemsLength,
              itemBuilder: (context, i) => CartListItem(
                    cartItem: cart.items.values.elementAt(i),
                  ))
        ],
      ),
    ));
  }
}
