import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';

class SearchProvider extends ChangeNotifier {


  List<ArticleModel> searchList = [];


  Future getAllSearchArticle(String value) async {
    try{
    var response= await Dio().get("https://newsapi.org/v2/top-headlines?country=EG&apiKey=eba6d3e442cb408c97e0f28164c89a0f&q=$value");
    searchList = List<ArticleModel>.from(
        response.data["articles"].map((x) => ArticleModel.fromjson(x)));
    notifyListeners();
  }catch(e){
  print(e);
  }

  }

}