import 'package:flutter/material.dart';

class Recipe4 extends StatefulWidget {
  final String imageUrl;

  const Recipe4({Key key, this.imageUrl})
      : super(key: key);
  @override
  _Recipe4 createState() => _Recipe4();
}

class _Recipe4 extends State<Recipe4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: layout(),
    );
  }

  Widget layout() {
    return Center(
      child: Image.asset(
        widget.imageUrl,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
