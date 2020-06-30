import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/infra/routingConstants.dart';
import 'package:shop/provider/orders.dart';
import 'package:shop/provider/products.dart';
import 'infra/router.dart';
import 'provider/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ProductsProvider()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Orders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.orange,
            fontFamily: 'Lato'),
        onGenerateRoute: getRoute,
        initialRoute: ProductsRoute,
      ),
    );
  }
}
