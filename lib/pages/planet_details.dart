import 'package:flutter/material.dart';
import 'package:nasa/models/planet_model.dart';

class PlanetDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Planet planeta = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/stars.gif',
                    fit: BoxFit.cover,
                    height: 320,
                  ),
                  Container(
                    child: Hero(
                      tag: planeta.name,
                      child: Image.asset(
                        planeta.img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Text(planeta.name,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'Sofia Pro',)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(planeta.desc + " " + planeta.desc,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Sofia Pro',
                        fontWeight: FontWeight.w300)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
