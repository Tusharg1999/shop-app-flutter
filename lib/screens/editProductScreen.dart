import 'package:flutter/material.dart';

class EditProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Edit Product"),
            ),
            body: Container(
              child: Form(
                  child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "Title"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Price"),
                    keyboardType: TextInputType.number,
                  )
                ],
              )),
            )));
  }
}
