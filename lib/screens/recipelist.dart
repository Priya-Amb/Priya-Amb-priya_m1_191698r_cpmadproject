
import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/model/custom_slider.dart';
import 'package:priya_m1_191698r_cpmadproject/model/cartController.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/cartPage.dart';

class RecipeList extends StatefulWidget {
  @override
  _RecipeListState createState() =>  _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  // int getColorHexFromStr(String colorStr) {
  //   colorStr = "FF" + colorStr;
  //   colorStr = colorStr.replaceAll("#", "");
  //   int val = 0;
  //   int len = colorStr.length;
  //   for (int i = 0; i < len; i++) {
  //     int hexDigit = colorStr.codeUnitAt(i);
  //     if (hexDigit >= 48 && hexDigit <= 57) {
  //       val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
  //     } else if (hexDigit >= 65 && hexDigit <= 70) {
  //       // A..F
  //       val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
  //     } else if (hexDigit >= 97 && hexDigit <= 102) {
  //       // a..f
  //       val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
  //     } else {
  //       throw new FormatException("An error occurred when converting a color");
  //     }
  //   }
  //   return val;
  // }

  
  //  final _shoeName = [
  //   'Kaptir Super',
  //   'Ultra Boost',
  //   'Ultra DNA',
  //   'Air Force Flyknit',
  //   'Pegasus Trail',
  //   'React Infinity'
  // ];

  // final _shoePrice = [
  //   '\$128.0',
  //   '\$132.0',
  //   '\$139.0',
  //   '\$205.0',
  //   '\$146.0',
  //   '\$130.0'
  // ];

  @override
 var cartController = Get.put(CartController());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 150.0,
            width: 30.0,
            child: InkWell(
              splashColor: Colors.redAccent,
              highlightColor: Colors.blueAccent.withOpacity(0.5),
              onTap: (){
                 // Navigator.push(
                  //context,
                  //MaterialPageRoute(
                  //builder: (context) => CartPage(),
                  //),
                //);
                //Get.to(() => CartPage());
              },
              child: Stack(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.filter_list,
                  color: Colors.white,
                  ),
                  onPressed: null,
                ),
                Positioned(child: Stack(
                  children: <Widget>[
                  Icon(Icons.brightness_1,
                  size: 20.0, color: Colors.red[700]),
                Positioned(
                  top: 3.0,
                  right: 7.0,
              child: Center(
                  child: Obx(
                  () => Text(
                  cartController.count.toString(),
                    textAlign: TextAlign.right,
                      style: TextStyle(
                      color: Colors.white,
                       fontSize: 12.0,
                       fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                  )
                  ],
                ))
                ],),
            ),
            ),
          )
        ],
      ),
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
                  Container(
                    width: 360,
                    padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(2),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            contentPadding:
                                EdgeInsets.only(left: 15.0, top: 15.0),
                            hintText: 'Search for recipes',
                            hintStyle: TextStyle(color: Colors.grey)) ,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
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
      //  Expanded(child:  
      // GridView.count(
      //   crossAxisCount: 2,
      //   children: List.generate(6,(index){
      //     return InkWell(
      //       splashColor: Colors.blueAccent,
      //       highlightColor: Colors.blueAccent.withOpacity(1.0),
      //       onTap: (){
      //         cartController.addToCart(index);
      //       },
      //       child: _buildGridCards(index, 'images/shoe_${index + 1}.jpg', _shoeName[index], _shoePrice[index]),
      //     );
      //   }),
      // ),
    //),
                ],
              )
            ],
          ),
        ],
      ),
      ),
    );
  }

  //   Widget _buildGridCards(int index, String imgPath, String shoeName, String shoePrice){
  //   return Card(
  //     color: Colors.lightBlueAccent[50],
  //     elevation: 5,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
  //   ),
  //   child: Column(
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Container(
  //           height: 140,
  //           width: 150,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage(imgPath),
  //               fit: BoxFit.fitWidth,
  //             ),
  //             borderRadius: BorderRadius.circular(12),
  //           ),
  //         ),
  //       ),
  //       Text(shoeName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
  //       ),
  //       Text(shoePrice, style: TextStyle(fontSize: 14.0),
  //       ),
  //     ],
  //   ),
  //   );
  // }

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