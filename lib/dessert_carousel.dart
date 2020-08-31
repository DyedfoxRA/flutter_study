import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/models/dessert_model.dart';

class DessertCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: desserts.length,
        itemBuilder: (BuildContext context, int index) {
          final Dessert dessert = desserts[index]; // fix using it
          return DessertWidget(dessert);
        },
      ),
    );
  }
}

class DessertWidget extends StatelessWidget {
  final Dessert _dessert; // use it


  // use widget Padding
  DessertWidget(this._dessert);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // check if nessesary stack
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            // margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            height: 170.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      width: 150.0,
                      image: AssetImage(
                          '${desserts[index].imageUrl}'), // fix previos case
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 230.0,
                      child: Text(
                        '${desserts[index].name}',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.grey[200], fontSize: 20),
                      ),
                    ),
                    Container(
                      width: 230,
                      child: Text(
                        '${desserts[index].Description}',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.grey[200], fontSize: 15.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
