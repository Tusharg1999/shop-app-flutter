import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/orders.dart';

class RecentOrders extends StatefulWidget {
  @override
  _RecentOrdersState createState() => _RecentOrdersState();
}

class _RecentOrdersState extends State<RecentOrders> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    var orders = Provider.of<Orders>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recent Orders"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: orders.orders.length,
            itemBuilder: (context, i) => Column(
              children: <Widget>[
                ListTile(
                  title: Text('\$${orders.orders[i].total}'),
                  subtitle: Text(
                    DateFormat('dd/MM/yyyy hh:mm')
                        .format(orders.orders[i].date),
                  ),
                  trailing: IconButton(
                    icon:
                        Icon(_expanded ? Icons.expand_less : Icons.expand_more),
                    onPressed: () {
                      setState(() {
                        _expanded = !_expanded;
                      });
                    },
                  ),
                ),
                if (_expanded)
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    height:
                        min(orders.orders[i].orders.length * 20.0 + 10, 100),
                    child: ListView(
                      children: orders.orders[i].orders
                          .map(
                            (prod) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  prod.title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${prod.quantity}x \$${prod.price}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
