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
          return DessertWidget(desserts[index]);
        },
      ),
    );
  }
}

class DessertWidget extends StatelessWidget { // move to new class
  final Dessert _dessert;
  DessertWidget(this._dessert);

  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: EdgeInsets.fromLTRB(10.0,5.0,10.0,7.0), // edgeInsets has option like .all(10)
          child: Container(
            height: 170.0, // try to remove it
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width:5.0,
                ),
                 ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      width: 150.0,
                      image: AssetImage(
                          '${_dessert.imageUrl}'), // fix previos case + coma
                    ),
                  ),

                SizedBox(
                  width:10.0,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height:5.0,),
                    Container(
                      width: 220.0,
                      child: Text(
                        '${_dessert.name}',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.grey[200], fontSize: 20),// comma кома кароч
                      ),
                    ),
                    SizedBox(height:10.0,),
                    Container(
                      width: 220,
                      child: Text(
                        '${_dessert.description}',
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
        );


  }
}
