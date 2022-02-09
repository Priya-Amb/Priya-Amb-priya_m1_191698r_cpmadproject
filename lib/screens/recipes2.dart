import 'package:flutter/material.dart';

class Recipe2 extends StatefulWidget {
  final String imageUrl;

  const Recipe2({Key key, this.imageUrl})
      : super(key: key);
  @override
  _Recipe2 createState() => _Recipe2();
}

class _Recipe2 extends State<Recipe2> {
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
