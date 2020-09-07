import 'package:flutter/material.dart';
import 'package:flutter_study/models/dish_model.dart';
class Page {
  String name;
  String route;

  Page(this.name, this.route);
}


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

class HomeWidget extends StatelessWidget {
  final Page _page;

  HomeWidget(this._page);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: Container(

        width: 400.0,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context,'${_page.route}');
          },
          child:Text(
            '${_page.name}',
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

List<Page> pages = [
  Page('Starter', '/starter'),
  Page('Salad', '/salad'),
  Page('Soup', '/soup'),
  Page('Main Course', '/main_course'),
  Page('Dessert', '/dessert'),
  Page('Warm Beverage', '/warm_beverage'),
  Page('Cold Beverage', '/cold_beverage'),
];
