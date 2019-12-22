import 'package:flutter/material.dart';

class Mine extends StatelessWidget {

  const Mine({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mypage"),
      ),
      body: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget {
  const Mypage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Mypage"),
    );
  }
}