import 'package:flutter/material.dart';

import 'package:nasa/models/article_model.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("News",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'Sofia Pro',
                      fontWeight: FontWeight.w300)),
            ),
          ),
          _allNews()
        ],
      ),
    );
  }

  Widget _allNews() {
    List<Widget> all = List();

    articles.forEach((a) {
      all.add(_article(a));
      all.add(Divider(height: 2,color: Colors.grey,));
    });

    return Column(children: all);
  }

  Widget _article(Article ar) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 0.1),
      child: ListTile(
        onTap: () {},
        title: Text(
          ar.title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          ar.desc,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FadeInImage(
            image: NetworkImage(ar.img),
            placeholder: AssetImage(''),
            fit: BoxFit.cover,
            height: 50,
            width: 70,
          ),
        ),
      ),
    );
  }
}
