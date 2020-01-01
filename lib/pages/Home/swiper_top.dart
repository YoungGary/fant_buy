import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class SwiperArea extends StatefulWidget {
  SwiperArea({Key key}) : super(key: key);

  @override
  _SwiperAreaState createState() => _SwiperAreaState();
}

class _SwiperAreaState extends State<SwiperArea> {
   static var fit = BoxFit.fill;
  List images = [
    new Image.network(
      "https://img.ddimg.mobi/1bb411f2cd09d1575815053778.jpg",
      fit: fit,
    ),
    new Image.network(
      "https://img.ddimg.mobi/0ec4a32cbd84b1575892960355.jpg",
      fit: fit,
    ),
    new Image.network(
      "https://img.ddimg.mobi/168bff87979f11575943593312.jpg",
      fit: fit,
    ),
    new Image.network(
      "https://img.ddimg.mobi/b7efb94de888d1575820057576.jpg",
      fit: fit,
    ),
    new Image.network(
      "https://img.ddimg.mobi/d3d83d40395221575808767181.jpg",
      fit: fit,
    ),
    new Image.network(
      "https://img.ddimg.mobi/0ec4a32cbd84b1575892960355.jpg",
      fit: fit,
    ),
    new Image.network(
      "https://img.ddimg.mobi/168bff87979f11575943593312.jpg",
      fit: fit,
    ),
];
  @override
  Widget build(BuildContext context) {
    double rpx = MediaQuery.of(context).size.width/750;
    return Container(
      constraints: BoxConstraints(
        minHeight: 0,
        maxHeight: 400*rpx
      ),
      padding: EdgeInsets.all(10),
       child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return images[index];
        },
        itemCount: images.length,
        pagination: new SwiperPagination(
          
        ),
        autoplay: true,
        // control: new SwiperControl(),
      ),
    );
  }
}