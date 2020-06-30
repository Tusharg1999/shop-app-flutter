import 'package:flutter/material.dart';
import 'package:shop/infra/routingConstants.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Hello"),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          ListTile(
            title: Text("Cart"),
            onTap: () {
              Navigator.pushNamed(context, OrderSummaryRoute);
            },
          ),
          ListTile(
            title: Text("My Orders"),
            onTap: () {
              Navigator.pushNamed(context, RecentOrdersRoute);
            },
          )
        ],
      ),
    );
  }
}
