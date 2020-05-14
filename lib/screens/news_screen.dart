import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newspanda/helper/data.dart';
import 'package:newspanda/helper/news.dart';
import 'package:newspanda/models/category_model.dart';
import 'package:newspanda/models/news_model.dart';
import 'package:newspanda/tile/CategoryTile.dart';
import 'package:newspanda/tile/LoadingAnimation.dart';
import 'package:newspanda/tile/NewsTile.dart';


class NewsScreen extends StatefulWidget {

  final String country;
  NewsScreen({this.country});

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {


  List<CategoryModel> categories = new List<CategoryModel>();
  List<NewsModel> newsArticles = new List<NewsModel>();

  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async{
    News newsClass = News();
    await newsClass.getNews(widget.country);
    newsArticles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                '🐼',
                style: TextStyle(
                color: Colors.blue
              ),
            )
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.save),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: _loading ? Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ) ,
              child: LoadingAnimation(),
            ),
          ),
        ],
      ):SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[

              //CATEGORIES
              Container(
                height: 70.0,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index){
                      return CategoryTile(
                        imageUrl: categories[index].imageUrl,
                        categoryName: categories[index].categoryName,
                        country: widget.country
                        ,
                      );
                    }
                    ),
              ),

              //NEWS ARTICLES
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: ListView.builder(
                  itemCount: newsArticles.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return NewsTile(
                      title: newsArticles[index].title,
                      imageUrl: newsArticles[index].urlToImage,
                      desc: newsArticles[index].description,
                      url: newsArticles[index].url,
                    );
                  },
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}







