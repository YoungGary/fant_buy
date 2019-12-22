import 'package:flutter/material.dart';

class Cart extends StatelessWidget {

  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cart页面"),
      ),
      body: Cartpage(),
    );
  }
}

class Cartpage extends StatelessWidget {
  const Cartpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("cart页面"),
    );
  }
}