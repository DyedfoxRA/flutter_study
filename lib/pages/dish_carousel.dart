import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';
import 'package:flutter_study/pages/dish_widget.dart';
import 'package:flutter_study/functions.dart';

class DishCarousel extends StatelessWidget {
  String type;

  DishCarousel(this.type);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: Count(dishes, type),
        itemBuilder: (BuildContext context, int index) {
          return DishWidget(dishes[Firstin(dishes, type) + index]);
        },
      ),
    );
  }
}
