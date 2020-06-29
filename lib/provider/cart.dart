import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final int quantity;
  final String title;
  final double price;
  CartItem({
    @required this.id,
    @required this.price,
    @required this.quantity,
    @required this.title,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemsLength {
    return _items.length;
  }

  void add({String title, double price, String productId}) {
    if (_items.containsValue(productId)) {
      _items.update(
          productId,
          (value) => CartItem(
              id: value.id,
              price: value.price + price,
              quantity: value.quantity + 1,
              title: value.title));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              price: price,
              quantity: 1,
              title: title));
    }
    notifyListeners();
  }
}
