import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HEllo world"),
      ),
      body: Center(
        child: Text("test"),
      ),
    );
  }
}
