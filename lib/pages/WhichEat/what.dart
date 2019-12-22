import 'package:flutter/material.dart';

class What extends StatelessWidget {

  const What({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What"),
      ),
      body: Whatpage(),
    );
  }
}

class Whatpage extends StatelessWidget {
  const Whatpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("What"),
    );
  }
}