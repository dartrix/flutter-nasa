import 'package:flutter/material.dart';
import 'package:nasa/home.dart';
import 'package:nasa/pages/planet_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/'       : (BuildContext context) => NasaHome(),
        'details' : (BuildContext context) => PlanetDetails()
      },
    );
  }
}