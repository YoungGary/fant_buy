
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  const Category({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categorypage"),
      ),
      body: Categorypage(),
    );
  }
}

class Categorypage extends StatelessWidget {
  const Categorypage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Categorypage"),
    );
  }
}