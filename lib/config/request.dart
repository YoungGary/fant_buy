import "package:dio/dio.dart";
import 'dart:async';
import 'dart:io';
import './api.dart';



Future getHomePageContent() async{
  try{
    print('开始获取首页数据...............');
    Response response;
    Dio dio = new Dio();
    response = await dio.get(apiList['getHomeGridData']);
    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======>$e');
  }

}