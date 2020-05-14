import 'package:newspanda/models/news_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class News{


  List<NewsModel> news = [];

  Future<void> getNews(String country) async{

    String url = 'http://newsapi.org/v2/top-headlines?country=$country&category=business&apiKey=cf5ed83c1d754c52a9b6e52f732f094c';

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == 'ok'){
      jsonData['articles'].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){

          NewsModel newsModel = NewsModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
          );
          news.add(newsModel);
        }

      });
    }

  }
}

class CategoryNews{

  List<NewsModel> news = [];

  Future<void> getNews(String category, String country) async{

    String url = 'http://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=cf5ed83c1d754c52a9b6e52f732f094c';

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == 'ok'){
      jsonData['articles'].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){

          NewsModel newsModel = NewsModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
          );
          news.add(newsModel);
        }

      });
    }

  }

}