import 'package:flutter/material.dart';
import 'package:nasa/models/planet_model.dart';

class PlanetsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 12),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Our Solar System",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.w300
                  )),
            ),
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: PageView.builder(
              pageSnapping: false,
              controller: PageController(initialPage: 1, viewportFraction: 0.3),
              itemCount: planetas.length,
              itemBuilder: (context, i) {
                return _tarjeta(context, planetas[i]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _tarjeta(BuildContext context, Planet planeta) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(bottom: 5),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Hero(
              tag: planeta.name,
              child: Image.asset(
                planeta.img,
              ),
            ),
            Text(
              planeta.name,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Sofia Pro',
                fontWeight: FontWeight.w300
              ),
            )
          ],
        ),
      ),
      onTap: () {
        print(planeta.name);
        Navigator.pushNamed(context, 'details', arguments: planeta);
      },
    );
  }
}
