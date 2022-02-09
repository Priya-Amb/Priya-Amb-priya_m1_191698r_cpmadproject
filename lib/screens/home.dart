import 'package:priya_m1_191698r_cpmadproject/screens/about.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/addreviews.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/drawer.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/foodlist.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/profile.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipelist.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/showreviews.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String title = '';
  int index = 0;
  List<Widget> list = [
    FoodList(),
    Recipes(),
    AddReviewPage(),
    ShowReviews(),
    Profile(),
    About(),
    Search(),
  ];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(title),
        ),
        // body: Home(),
        //  drawer:MyDrawer(),
        body: list[index],
        drawer: MyDrawer(
          onTap: (context, i, txt) {
            setState(() {
              index = i;
              title = txt;
              Navigator.pop(context);
            });
          },
        ));
  }
}