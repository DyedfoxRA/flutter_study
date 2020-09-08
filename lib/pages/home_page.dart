import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';
import 'package:flutter_study/pages/home_widget.dart';
import 'package:flutter_study/models/home_page_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          return HomeWidget(pages[index]);
        },
      ),
    );
  }
}
