import 'package:flutter/material.dart';
class PositionArea extends StatefulWidget {
  PositionArea({Key key}) : super(key: key);
  @override
  _PositionAreaState createState() => _PositionAreaState();
}

class _PositionAreaState extends State<PositionArea> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: <Widget>[
          Expanded(flex: 1, child: MyPosition()),
          SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 2,
            child: SearchProduct(),
          )
        ],
      ),
    );
  }
}

class MyPosition extends StatefulWidget {
  MyPosition({Key key}) : super(key: key);

  @override
  _MyPositionState createState() => _MyPositionState();
}

class _MyPositionState extends State<MyPosition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
          color: Colors.black38, borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.location_searching,
            color: Colors.white,
          ),
          Text(
            '请选择位置',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class SearchProduct extends StatelessWidget {
  const SearchProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15.0)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 8),
            icon: Icon(Icons.search, size: 20, color: Colors.grey),
            border: InputBorder.none,
            hintText: '输入商品名称'),
      ),
    );
  }
}