import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';
class Salad_Page extends StatefulWidget {
  @override
  _Salad_PageState createState() => _Salad_PageState();
}

class _Salad_PageState extends State<Salad_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: salads.length,
        itemBuilder: (BuildContext context, int index) {
          return SaladWidget(salads[index]);
        },
      ),
    );
  }
}
class SaladWidget extends StatelessWidget {
  final Dish _salad;
  SaladWidget(this._salad);
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
                  '${_salad.imageUrl}',
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
                    '${_salad.name}',

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
                    '${_salad.description}',
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

