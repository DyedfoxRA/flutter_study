import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';

class DishWidget extends StatelessWidget {
  // move to new class
  final Dish _dish;

  DishWidget(this._dish);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 170.0, // try to remove it,
        width: 400.0,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                width: 150.0,
                image: AssetImage(
                  '${_dish.imageUrl}',
                ), // fix previos case + coma
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 220.0,
                  child: Text(
                    '${_dish.name}',

                    softWrap: true,
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 20,
                    ), // comma кома кароч
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 220,
                  child: Text(
                    '${_dish.description}',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 15.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
