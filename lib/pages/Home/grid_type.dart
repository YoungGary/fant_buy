import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridTypeView extends StatelessWidget {
  const GridTypeView({Key key,@required  this.serviceList}) : super(key: key);
  final List<Map> serviceList;
  @override
  Widget build(BuildContext context) {
    print(serviceList);
    // return SliverGrid(
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 5,
    //     crossAxisSpacing: 8.0,
    //     mainAxisSpacing: 8.0,
    //     childAspectRatio: 1.0,
    //   ),
    //   delegate: SliverChildBuilderDelegate(
    //     (BuildContext context, int index) {
    //       return ServiceItem(image: serviceList[index]['icon_url'],name:serviceList[index]["name"]);
    //     },
    //     childCount: serviceList.length,
    //   ),

    // );
    return GridView(
      padding: EdgeInsets.symmetric(vertical: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 3/2,
      ),
      children: serviceList.map((item) => ServiceItem(image: item["icon_url"],name: item["name"],)).toList(),
    );
  }
}


class ServiceItem extends StatelessWidget {
  final String image;
  final String name;

  ServiceItem({Key key, this.image,this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // color: Colors.blue,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container( width: 30,   child: Image.network(image)),
          Text(
            this.name,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceItemViewModel {
  /// 图标
  final Icon icon;

  /// 标题
  final String title;

  const ServiceItemViewModel({
    this.icon,
    this.title,
  });
}