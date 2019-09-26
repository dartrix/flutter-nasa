import 'package:flutter/material.dart';
import 'package:nasa/widgets/news_widget.dart';
import 'package:nasa/widgets/planets_widget.dart';

class NasaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("NASA"),
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Stack(
                    children: [
                      Image.network(
                        'https://spacenews.com/wp-content/uploads/2018/05/24359364107_152b0152ff_k-879x485.jpg',
                        width: 500,
                        fit: BoxFit.cover,
                        
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "NASA",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontFamily: 'Nasa'),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Explores for answers that power our future.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    fontFamily: 'Nasa',
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              PlanetsWidget(),
              News()
            ],
          ),
        ),
      ),
    );
  }
}
