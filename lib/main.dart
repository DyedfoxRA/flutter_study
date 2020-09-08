import 'package:flutter/material.dart';
import 'package:flutter_study/pages/dish_carousel.dart';
import 'package:flutter_study/pages/home_page.dart';

void main() => runApp(MaterialApp(home: MyApp(Home()), routes: {
      '/starter': (context) => MyApp(DishCarousel('starter')),
      '/salad': (context) => MyApp(DishCarousel('salad')),
      '/soup': (context) => MyApp(DishCarousel('soup')),
      '/main_course': (context) => MyApp(DishCarousel('main course')),
      '/dessert': (context) => MyApp(DishCarousel('dessert')),
      '/warm_beverage': (context) => MyApp(DishCarousel('warm beverage')),
      '/cold_beverage': (context) => MyApp(DishCarousel('cold beverage')),
    }));

class MyApp extends StatelessWidget {
  final Widget next;

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
