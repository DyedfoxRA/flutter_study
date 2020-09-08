import 'package:flutter/material.dart';
import 'package:flutter_study/models/home_page_model.dart';


class HomeWidget extends StatelessWidget {
  final Pages _page;

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
            Navigator.pushNamed(context, '${_page.route}');
          },
          child: Text(
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
