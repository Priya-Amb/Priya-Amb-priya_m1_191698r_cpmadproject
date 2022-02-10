import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.white),
    ),body: layout(), backgroundColor: Colors.white);
  }

  Widget layout() {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset(
            'images/Logo.png',
            height: 150,
          ),
        ),
      ),
      // SizedBox(
      //   height: 50,
      // ),
      // Center(
      //   child: Padding(
      //     padding: const EdgeInsets.only(top: 30),
      //     child: Image.asset(
      //       'images/AboutUs.png',
      //       height: 30,
      //     ),
      //   ),
      // ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 20),
          child: Text(
            "This application promotes all beings to have a healthier lifestyle by turning something boring and healthy vegetables into a craveable and mouthwatering dish.",
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ),
      ),
       Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 20),
          child: Text(
            "For more inquires, please contact us at 6500 1234.",
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ),
      ),
    ]);
  }
}
