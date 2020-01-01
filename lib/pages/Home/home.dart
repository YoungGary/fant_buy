import 'package:flutter/material.dart';
import '../../config/request.dart';
import './swiper_top.dart';
import './top_search.dart';
import './grid_type.dart';
class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    print(rpx);
    return Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverCustomHeaderDelegate(
                collapsedHeight: 50,
                expandedHeight: 810,
                paddingTop: MediaQuery.of(context).padding.top,
                coverImgUrl: 'lib/images/home/backImage.png'),
          ),
          SliverFillRemaining(
            child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return new Container(
                color: Colors.red,
                child: new Text("Item1 $index"),
              );
            },
          ))
        ],
      ),
    );
  }
}

class SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double collapsedHeight;
  final double expandedHeight;
  final double paddingTop;
  final String coverImgUrl;
  final String title;
  String statusBarMode = 'dark';

  SliverCustomHeaderDelegate({
    this.collapsedHeight,
    this.expandedHeight,
    this.paddingTop,
    this.coverImgUrl,
    this.title,
  });

  @override
  double get minExtent => this.collapsedHeight + this.paddingTop;

  @override
  double get maxExtent => this.expandedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  Color makeStickyHeaderBgColor(shrinkOffset) {
    final int alpha = (shrinkOffset / (this.maxExtent - this.minExtent) * 255)
        .clamp(0, 255)
        .toInt();
    return Color.fromARGB(alpha, 255, 255, 255);
  }


   Widget getGridView(){
      return FutureBuilder(
        future:getHomePageContent(),
        builder: (context,snapshot){
          if(snapshot.hasData){
             var data=snapshot.data;
              // print("object");
             //print(data['data']);
             List<Map> list = (data['data'] as List).cast(); 
            //  print(list);
             return  Container(
               height: 130,
              //  color: Colors.red,
              //  color: Colors.red,
               child: GridTypeView(serviceList: list)
             );
             
          }else{
            return Container();
          }
        },
      );  
  }
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    
    return Container(
      height: this.maxExtent,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Container(child: Image.asset(this.coverImgUrl, fit: BoxFit.cover)),
          SingleChildScrollView(
              child: Column(
              children: <Widget>[
                Container(
                  //设置背景图片
                  padding:
                      EdgeInsets.only(top: paddingTop + this.collapsedHeight),
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage(this.coverImgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Homepage(),
                ),
                //买菜金图片
                Container(child: Image.network('http://518taole.7-orange.cn/homead2.gif', fit: BoxFit.cover)),
                
                this.getGridView(),
              
                
              ],
          )),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              child: SafeArea(
                bottom: false,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: this.collapsedHeight,
                    child: PositionArea()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width / 750;
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  // padding: EdgeInsets.only(top: 100),
                  SwiperArea(),
                  // 轮播图  从swiper_top 中 引用
                  // 三个文字
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TextRow(
                            icon: Icon(Icons.local_shipping,
                                size: 14, color: Colors.white),
                            title: '最快29分钟送达'),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextRow(
                            icon: Icon(Icons.monetization_on,
                                size: 14, color: Colors.white),
                            title: '0元起送，0配送费'),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextRow(
                            icon: Icon(Icons.security,
                                size: 14, color: Colors.white),
                            title: '安心退'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

//三个文
class TextRow extends StatelessWidget {
  const TextRow({Key key, @required this.icon, @required this.title})
      : super(key: key);
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          width: 5,
        ),
        Text(title,
            style: TextStyle(fontSize: 14, color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis)
      ],
    );
  }
}
