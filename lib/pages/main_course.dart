import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';
class Main_Course_Page extends StatefulWidget {
  @override
  _Main_Course_PageState createState() => _Main_Course_PageState();
}

class _Main_Course_PageState extends State<Main_Course_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: main_courses.length,
        itemBuilder: (BuildContext context, int index) {
          return Main_CourseWidget(main_courses[index]);
        },
      ),
    );
  }
}
class Main_CourseWidget extends StatelessWidget {
Dish _main;
Main_CourseWidget(this._main);
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
                  '${_main.imageUrl}',
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
                    '${_main.name}',

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
                    '${_main.description}',
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
