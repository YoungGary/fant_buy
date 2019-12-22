import 'package:flutter/material.dart';

import './pages/Cart/Cart.dart';
import './pages/Category/Category.dart';
import './pages/Home/home.dart';
import './pages/WhichEat/what.dart';
import './pages/Mine/My.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _currIndex;

  var _currentPage ;

  final List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        title: Text("首页"),
        icon: Icon(Icons.home)
      ),
      BottomNavigationBarItem(
        title: Text("分类"),
        icon: Icon(Icons.category)
      ),
      BottomNavigationBarItem(
        title: Text("吃什么"),
        icon: Icon(Icons.face)
      ),
      BottomNavigationBarItem(
        title: Text("购物车"),
        icon: Icon(Icons.shop)
      ),
      BottomNavigationBarItem(
        title: Text("我的"),
        icon: Icon(Icons.my_location)
      ),
    ];

    final List pages = [
      Home(),
      Category(),
      What(),
      Cart(),
      Mine()
    ];


  @override
  void initState() {
    _currIndex  = 0;
    _currentPage = Home();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(59, 186, 99, 1)),
      home: Scaffold(
        body: _currentPage,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(59, 186, 99, 1),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: items,
          currentIndex: _currIndex,
          onTap: (index){
            print(index);
            setState(() {
              _currIndex = index;
              _currentPage = pages[index];
            });
          },
        ),
      
      ),
    );
  }
}
