import 'package:flutter/material.dart';
import 'package:newspanda/screens/category_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';


class CategoryTile extends StatelessWidget {

  final String imageUrl, categoryName, country;

  CategoryTile({this.imageUrl, this.categoryName, this.country});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => CategoryScreen(
                category: categoryName.toString().toLowerCase(),
                country: country
            )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 18.0),
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: CachedNetworkImage(
                    imageUrl: imageUrl, width: 120, height: 60, fit: BoxFit.cover)
            ),
            Container(
              alignment: Alignment.center,
              width: 120, height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.black26
              ),
              child: Text(
                categoryName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}