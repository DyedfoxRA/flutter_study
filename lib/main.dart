import 'package:flutter/material.dart';
import 'package:flutter_study/dessert_carousel.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert Menu'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Container(color: Colors.grey[900], child: DessertCarousel()),
    );
  }
}
