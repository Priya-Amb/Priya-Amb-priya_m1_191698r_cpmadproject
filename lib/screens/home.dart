import 'package:priya_m1_191698r_cpmadproject/screens/foodlist.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipelist.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/food.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Center(child: Text("VEGAN & FUSION",
        style:  TextStyle(
                fontFamily: 'Basic Sans',
                fontSize: 15,
                letterSpacing: 3.375,
          ),
        ),
      ),
        backgroundColor: Colors.black,
      ),
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset('images/background.jpg', fit: BoxFit.fill, height: 200.0, width: 450.0,),
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40.0),
                  Text(
                    'POPULAR TODAY',
                    style: TextStyle(
                        fontFamily: 'Basic Sans',
                        letterSpacing: 3.375,
                        fontSize: 40.0,
                        color: Colors.black,
                        fontWeight:FontWeight.bold),
                  ),
                  Text(
                    'NEW FOOD OPTIONS ADDED ',
                   style: TextStyle(
                        fontFamily: 'Basic Sans',
                        letterSpacing: 3.375,
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight:FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.0
        ),
        Center(
          child: Stack(
            children: <Widget>[
              Image.asset('images/ColdChocoOatsWithNutsnBerries.jpg', fit: BoxFit.fill, height: 320.0),
              Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 240.0),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FoodList()
                      ));
                    },
                    mini: true,
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    child: Center(
                        child: Icon(Icons.arrow_forward, color: Colors.black)),
                  )
                ],
              ),
            )
            ],
            
          ),
        ),
        SizedBox(height: 20,),
         Text("Guilty-Free Vegan Desserts ",
          style: TextStyle(
              fontFamily: 'Basic Sans',
              letterSpacing: 3.375,
              fontSize: 15.0,
              color: Colors.black,
              fontWeight:FontWeight.w400),
              textAlign: TextAlign.center,
         ),

        SizedBox(
          height: 20.0
        ),
        Center(
          child: Stack(
            children: <Widget>[
              Image.asset('images/RiceNoodles withSweetStickySauce.jpg', fit: BoxFit.fill, height: 320.0),
              Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 240.0),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RecipeList()
                      ));
                    },
                    mini: true,
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    child: Center(
                        child: Icon(Icons.arrow_forward, color: Colors.black)),
                  )
                ],
              ),
            )
            ],
          ),
        ),
        SizedBox(height: 20,),
         Text("Flavoursome Recipes to purchase",
          style: TextStyle(
              fontFamily: 'Basic Sans',
              letterSpacing: 3.375,
              fontSize: 15.0,
              color: Colors.black,
              fontWeight:FontWeight.w400),
              textAlign: TextAlign.center,
         ),


      ],
    ));
  }
}