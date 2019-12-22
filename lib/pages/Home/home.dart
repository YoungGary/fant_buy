import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home页面"),
      ),
      body: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("home页面"),
    );
  }
}