import 'package:flutter/material.dart';
import '../model/category.dart';

class ChildCategory with ChangeNotifier{
  List<BxMallSubDto> childCategoryList = [];
  int childIndex = 0;//子类高亮索引
  int categoryIndex = 0;//大类索引
  String categoryId = '2c9f6c946cd22d7b016cd74220b70040'; //大类ID
  String subId = '';//小类ID
  int page = 1;//列表页数
  String noMoreText = '';//显示没有数据的文字
  bool isNewCategory = true;

  // 首页点击类别更改类别
  changeCategory(String id,int index){
    categoryId = id;
    categoryIndex = index;
    subId ='';
    notifyListeners();
  }

  // 大类切换逻辑
  getChildCategory(List<BxMallSubDto> list,String id){
    isNewCategory = true;
    page = 1;
    subId = '';//点击大类时，把子类Id清空
    noMoreText='';
    childIndex = 0;
    categoryId = id;
    BxMallSubDto all = BxMallSubDto();
    all.mallSubId='';
    all.mallCategoryId = '00';
    all.comments ='null';
    all.mallSubName = '全部';
    childCategoryList = [all];
    childCategoryList.addAll(list);
    notifyListeners();
  }

  // 改变子类索引
  changeChildIndex(index,String id){
    isNewCategory = true;
    // 传递两个参数，使用新传递的参数给状态赋值
    page = 1;
    noMoreText='';
    childIndex = index;
    subId = id;
    notifyListeners();
  }

  // 增加Page的方法
  addPage(){
    page++;
  }

  changeNoMore(String text){
    noMoreText = text;
    notifyListeners();
  }

  // 改为false
  changeFalse(){
    isNewCategory = false;
  }
}