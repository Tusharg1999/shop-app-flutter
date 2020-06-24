import 'package:flutter/material.dart';
import 'package:shop/infra/routingConstants.dart';
import 'infra/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.orange,
          fontFamily: 'Lato'),
      onGenerateRoute: getRoute,
      initialRoute: ProductsRoute,
    );
  }
}
