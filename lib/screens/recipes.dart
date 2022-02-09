import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/model/custom_slider.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes1.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes2.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes3.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes4.dart';

class Recipes extends StatefulWidget {

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
   @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column( 
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300.0,
                color: Colors.black,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Container(
                  //   width: 360,
                  //   padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                  //   child: Material(
                  //     elevation: 10.0,
                  //     borderRadius: BorderRadius.circular(2),
                  //     child: TextField(
                  //       decoration: InputDecoration(
                  //           border: InputBorder.none,
                  //           prefixIcon: Icon(Icons.search, color: Colors.black),
                  //           contentPadding:
                  //               EdgeInsets.only(left: 15.0, top: 15.0),
                  //           hintText: 'Search for recipes',
                  //           hintStyle: TextStyle(color: Colors.grey)),
                  //     ),
                  //   ),
                  // ),
 
                  SizedBox(height: 30.0),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: 3.0))),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('POPULAR RECIPES',
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Basic Sans',
                                      letterSpacing: 3.375,
                                      fontWeight: FontWeight.bold)),
                              Text('THIS WEEK',
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Basic Sans',
                                      letterSpacing: 4,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    height: 125.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _foodCard1(),
                        SizedBox(width: 10.0),
                        _foodCard2(),
                        SizedBox(width: 10.0),
                        _foodCard3(),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                    SizedBox(height: 10.0),
                  CustomSliderWidget(
                    items: [
                      "images/1.png",
                      "images/2.png",
                      "images/3.png"
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: 3.0))),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('LATEST RECIPES',
                                  style: TextStyle(
                                    color: Colors.black,
                                      fontSize: 20.0,
                                      fontFamily: 'Basic Sans',
                                      letterSpacing: 3.375,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
            SizedBox(height: 5),
            SizedBox(
                height: 390,
                child: GridView.count(
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Recipe1(
                                    imageUrl: 'images/Sushi.jpg',
                                  )),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/ColdChocoOatsWithNutsnBerries.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Recipe2(
                      //               imageUrl: 'images/ColdChocoOatsWithNutsnBerries.jpg',
                      //             )),
                      //   );
                      // },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/DoubleChcocCake.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Recipe3(
                      //               imageUrl: 'images/PickleTomatoBasilSourdough.jpg',
                      //             )),
                      //   );
                      // },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/PickleTomatoBasilSourdough.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Recipe4(
                      //               imageUrl: 'images/RiceNoodles withSweetStickySauce.jpg',
                      //             )),
                      //   );
                      // },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/RiceNoodles withSweetStickySauce.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                        ),
                      ),
                    ),
                  ],
                ))

          // SizedBox(height: 30,),
          // InkWell(
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(
          //      builder: (_) => Details()
          //       ));
          //   },
          //             child: Container(
          //     width: double.infinity,
          //     height: 150,
          //     decoration: BoxDecoration(
          //        borderRadius: BorderRadius.circular(20),
          //       image: DecorationImage(image: AssetImage("images/3.png"))
          //     ),
          //   ),
          // ),
  
      //     SizedBox(height: 20,),

            ],
      ),
        ],
       ),
        ],
      ),
      ),
    );
  }
Widget _foodCard1() {
    return Container(
      height: 150.0,
      width: 290.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
             offset: Offset(5,5),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[300],
        )
      ),
      
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                    DecorationImage(image: AssetImage('images/BerryCremeTart.jpg'))),
            height: 200.0,
            width: 145.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Mixed Berries',
                style: TextStyle(fontFamily: 'Basic Sans'),
              ),
              Text(
                'with Creme Tarts',
                style: TextStyle(fontFamily: 'Basic Sans'),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
            ],
          )
        ],
      ),
    );
  }
    Widget _foodCard2() {
    return Container(
      height: 150.0,
      width: 290.0,
       decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
             offset: Offset(5,5),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[300],
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                    DecorationImage(image: AssetImage('images/3Bagal.jpg'))),
            height: 200.0,
            width: 145.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Assorted Multigrain',
                style: TextStyle(fontFamily: 'Basic Sans'),
              ),
              Text(
                ' Sourdough',
                style: TextStyle(fontFamily: 'Basic Sans'),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
            ],
          )
        ],
      ),
    );
  }
  Widget _foodCard3() {
    return Container(
      height: 150.0,
      width: 290.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
             offset: Offset(5,5),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[300],
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                    DecorationImage(image: AssetImage('images/MixedGrainDish.jpg'))),
            height: 200.0,
            width: 145.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Mixed Rice and',
                style: TextStyle(fontFamily: 'Basic Sans'),
              ),
              Text(
                'Grilled Potato Set',
                style: TextStyle(fontFamily: 'Basic Sans'),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
            ],
          )
        ],
      ),
    );
  }
}