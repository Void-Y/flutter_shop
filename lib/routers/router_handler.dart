import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/details_page.dart';

Handler detailsHandler = Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> param){
    String goodsId = param['id'].first;
    // print('index>detail goodsId is ${goodsId}');
    return DetailsPage(goodsId);
  }
);