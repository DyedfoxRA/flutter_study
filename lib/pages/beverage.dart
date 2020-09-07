import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';
class Warm_Beverage_Page extends StatefulWidget {
  @override
  _Warm_Beverage_PageState createState() => _Warm_Beverage_PageState();
}

class _Warm_Beverage_PageState extends State<Warm_Beverage_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: warm_beverages.length,
        itemBuilder: (BuildContext context, int index) {
          return Warm_BeverageWidget(warm_beverages[index]);
        },
      ),
    );
  }
}
class Warm_BeverageWidget extends StatelessWidget {
  Dish _beverage;
  Warm_BeverageWidget(this._beverage);
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
                  '${_beverage.imageUrl}',
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
                    '${_beverage.name}',

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
                    '${_beverage.description}',
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


class Cold_Beverage_Page extends StatefulWidget {
  @override
  _Cold_Beverage_PageState createState() => _Cold_Beverage_PageState();
}

class _Cold_Beverage_PageState extends State<Cold_Beverage_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cold_beverages.length,
        itemBuilder: (BuildContext context, int index) {
          return Cold_BeverageWidget(cold_beverages[index]);
        },
      ),
    );
  }
}
class Cold_BeverageWidget extends StatelessWidget {
  Dish _beverage;
  Cold_BeverageWidget(this._beverage);
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
                  '${_beverage.imageUrl}',
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
                    '${_beverage.name}',

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
                    '${_beverage.description}',
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
