import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';
import 'package:flutter_study/pages/home_page.dart';
class Starter_Page extends StatefulWidget {
  @override
  _Starter_PageState createState() => _Starter_PageState();
}

class _Starter_PageState extends State<Starter_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: starters.length,
        itemBuilder: (BuildContext context, int index) {
          return StarterWidget(starters[index]);
        },
      ),
    );
  }
}
class StarterWidget extends StatelessWidget {
  final Dish _starter;
  StarterWidget(this._starter);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 400.0,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width:5.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                width: 150.0,
                image: AssetImage(
                  '${_starter.imageUrl}',
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
                    '${_starter.name}',

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
                    '${_starter.description}',
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



