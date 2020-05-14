import 'package:flutter/material.dart';
import 'package:newspanda/screens/article_screen.dart';


class NewsTile extends StatelessWidget {

  final String imageUrl, title, desc, url;

  NewsTile({@required this.imageUrl, @required this.title, @required this.desc, @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ArticleScreen(
              newsUrl: url,
            )

        ));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 18.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.network(imageUrl)),
            Text(title, style:
            TextStyle(
                fontSize: 17.0,
                color: Colors.black87,
                fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(desc, style:
            TextStyle(
                fontSize: 14.0,
                color: Colors.grey
            ),
            )
          ],
        ),
      ),
    );
  }
}