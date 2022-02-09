import 'package:flutter/material.dart';

class Recipe3 extends StatefulWidget {
  final String imageUrl;

  const Recipe3({Key key, this.imageUrl})
      : super(key: key);
  @override
  _Recipe3 createState() => _Recipe3();
}

class _Recipe3 extends State<Recipe3> {
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
