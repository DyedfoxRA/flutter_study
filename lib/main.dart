import 'package:flutter/material.dart';
import 'package:flutter_study/dessert_carousel.dart';
import 'package:flutter_study/pages/home_page.dart';
import 'package:flutter_study/pages/starter_page.dart';
import 'package:flutter_study/pages/salad_page.dart';
import 'package:flutter_study/pages/soup_page.dart';
import 'package:flutter_study/pages/main_course.dart';
import 'package:flutter_study/pages/beverage.dart';

void main() => runApp(MaterialApp(home: MyApp(Home()), routes: {
      '/starter': (context) => MyApp(Starter_Page()),
      '/salad': (context) => MyApp(Salad_Page()),
      '/soup': (context) => MyApp(Soup_Page()),
      '/main_course': (context) => MyApp(Main_Course_Page()),
      '/dessert': (context) => MyApp(DessertCarousel()),
      '/warm_beverage': (context) => MyApp(Warm_Beverage_Page()),
      '/cold_beverage': (context) => MyApp(Cold_Beverage_Page()),
    }));

class MyApp extends StatelessWidget {
  Widget next;

  MyApp(this.next); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Menu'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Container(color: Colors.grey[900], child: next),
    );
  }
}
