import 'package:cyclop/cyclop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/test_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: SafeArea(child: ColorButton(
        darkMode: true,
        key: Key('c2'),
        color: Colors.amber,
        boxShape: BoxShape.rectangle,
        size: 32,
    config: ColorPickerConfig(
        enableOpacity: false, enableLibrary: false
    ),
        onColorChanged: (value) => {},
      ),),),
    );
  }
}

