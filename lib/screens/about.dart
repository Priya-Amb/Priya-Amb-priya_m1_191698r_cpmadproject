import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: layout(), backgroundColor: Colors.white);
  }

  Widget layout() {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Image.asset(
            'images/MediFit.png',
            height: 150,
          ),
        ),
      ),
      SizedBox(
        height: 50,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Image.asset(
            'images/AboutUs.png',
            height: 30,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, top: 20),
        child: Text(
          "Featuring contributions from Specialist Doctors and Allied Health Professionals from across various health group. MediFit allows you to help promote fitness and manage medical appointments to residents in order to keep themselves fit and healthy and avoid too many app on the phone. Patients will enjoy the benefit of good treatment that focuses on quality of products as well as holistic care.",
          style: TextStyle(fontSize: 12, color: Colors.deepPurple),
        ),
      ),
    ]);
  }
}
