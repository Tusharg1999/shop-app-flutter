import 'package:flutter/material.dart';
import 'package:shop/provider/cart.dart';

class OrderItems {
  final String id;
  final List<CartItem> orders;
  final double total;
  final DateTime date;
  OrderItems(
      {@required this.id,
      @required this.orders,
      @required this.total,
      this.date});
}

class Orders extends ChangeNotifier {
  List<OrderItems> _list = [];

  List<OrderItems> get orders {
    return [..._list];
  }

  void addOrders(List<CartItem> list, double total) {
    _list.add(OrderItems(
        id: DateTime.now().toString(),
        orders: list,
        total: total,
        date: DateTime.now()));
    notifyListeners();
  }
}
