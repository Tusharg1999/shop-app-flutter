import 'package:flutter/material.dart';
import 'package:shop/infra/routingConstants.dart';
import 'package:shop/infra/undefinedRoute.dart';
import 'package:shop/screens/product.dart';
import 'package:shop/screens/productInfo.dart';

Route<dynamic> getRoute(RouteSettings settings) {
  switch (settings.name) {
    case ProductsRoute:
      return MaterialPageRoute(builder: (context) => Product());
    case ProductInfoRoute:
      var productsArgument = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => ProductInfo(
                products: productsArgument,
              ));
    default:
      return MaterialPageRoute(builder: (context) => UndefinedRoute());
  }
}