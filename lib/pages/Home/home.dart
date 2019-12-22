import 'package:flutter/material.dart';
import './swiper_top.dart';

class Home extends StatelessWidget {

  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Homepage(),
      )
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 280,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/home/backImage.png"),
                fit: BoxFit.fill,
              ),
            ),
          child: Column(
            children: <Widget>[
              //包括定位 搜索
              PositionArea(),
              // 轮播图  从swiper_top 中 引用
              SwiperArea(),
              // 三个文字
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: TextRow(
                      icon: Icon(Icons.local_shipping,size: 14,color: Colors.white),
                      title:'最快29分钟送达'
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextRow(
                      icon: Icon(Icons.monetization_on,size: 14,color: Colors.white),
                      title:'0元起送，0配送费'
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextRow(
                      icon: Icon(Icons.security,size: 14,color: Colors.white),
                      title:'安心退'
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ], 
    ); 
    
  }
}





class PositionArea extends StatefulWidget {
  PositionArea({Key key}) : super(key: key);
  @override
  _PositionAreaState createState() => _PositionAreaState();
}

class _PositionAreaState extends State<PositionArea> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child:MyPosition()
          ),
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
            height:40,
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.location_searching),
                Text('请选择位置'),
                Icon(Icons.arrow_drop_down)
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
        color: Colors.grey[200],
         borderRadius: BorderRadius.circular(15.0)
       ),
       child: TextField(
         
         decoration: InputDecoration(
           contentPadding: EdgeInsets.only(bottom: 8),
           icon: Icon(Icons.search,size: 20,color: Colors.grey),
           border: InputBorder.none,
           hintText: '输入商品名称'
         ),
       ),
     );
   }
 }

//三个文字

class TextRow extends StatelessWidget {
  const TextRow({Key key, @required this.icon,  @required  this.title}) : super(key: key);
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(width: 5,),
        Text(title,style: TextStyle(
            fontSize: 12,
            color: Colors.white  
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis
        )
      ],
    );
  }
}


