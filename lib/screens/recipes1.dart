// import 'package:flutter/material.dart';

// class Recipe1 extends StatefulWidget {
//   final String imageUrl;

//   const Recipe1({Key key, this.imageUrl})
//       : super(key: key);
//   @override
//   _Recipe1 createState() => _Recipe1();
// }

// class _Recipe1 extends State<Recipe1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//       ),
//       body: layout(),
//     );
//   }

//   Widget layout() {
//     return Center(
//       child: Image.asset(
//         widget.imageUrl,
//         height: double.infinity,
//         width: double.infinity,
//       ),
//     );
//   }
// }
////---------------------------------------------------------------------------

import 'package:priya_m1_191698r_cpmadproject/screens/recipes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:priya_m1_191698r_cpmadproject/services/firestore_service.dart';
import 'package:priya_m1_191698r_cpmadproject/model/food_model.dart';
import 'package:priya_m1_191698r_cpmadproject/model/recipe_model.dart';

class Recipe1 extends StatefulWidget {
  @override
  State<Recipe1> createState() => _Recipe1State();
}

double _iconRating = 2;


class _Recipe1State extends State<Recipe1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.white),
    ),
    //home: Builder(builder: (contextbuilder)
    body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return SingleChildScrollView(child: Column(children: <Widget>[_bigImage(),
    SafeArea(
      child: Padding(padding: EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      _nameInfo(),
      Divider(),
      _tag1(),
     // _tag2(),
      Divider(),
      _ingredients(),
      ],),)
    )
    ],),);
  }

  // Widget getFooter(){
  //   var size = MediaQuery.of(context).size;
  //   return Container(
  //     height: 40,
  //     width: size.width,
  //     decoration: BoxDecoration(
  //         color: Colors.white,
  //         border: Border(top: BorderSide(color: Colors.black.withOpacity(0.1)))),
  //     child: Padding(
  //       padding: const EdgeInsets.only(top: 15),
  //       child: Column(
  //         children: [
  //           Text(
  //             "\$15.00 away from a \$0.00 delivery fee",
  //             style: TextStyle(
  //                 color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Image _bigImage(){
    return Image(image: AssetImage('images/ColdChocoOatsWithNutsnBerries.jpg'),
    height: 500,
    fit: BoxFit.cover,
    );
  }

  Column _nameInfo(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Center(
        child: Text('Cold Chocolate Oats with Nuts and Berries',
        style: TextStyle(fontSize: 25.0,
        fontWeight: FontWeight.bold,
        ),),
      ),
    //   Divider(),
    // Text('Orthopedic assessment',
    // style: TextStyle(color: Colors.black45,
    // fontSize: 17.0,
    // ),
    // ),
    // Row(
    //    children: [
    //       Container(
    //          width: MediaQuery.of(context).size.width -40,
    //           child: Text(
    //           "Cafe - Assorted Coffees & Teas - Breakfast and Brunch",
    //             style: TextStyle(fontSize: 13, height: 1.3),
    //                     ),
    //                   )
    //                 ],
    //               ),
    SizedBox(height: 10,),
    Text('This chocolate overnight oats recipe is considered healthy because it is loaded with fiber and protein. The perfect staple for breakfast! Oats also contain natural minerals. Perfect Dessert for a summer time',
    style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
    ),
    ),
    ],
    );
  }

  Wrap  _tag1(){
    return Wrap(
      spacing: 3.0,
      children: List.generate(2, (int index) {
        return Chip(label: Text('Homemade ${index+1}'),
        avatar: Icon(Icons.dining,
        color: Colors.black,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
        );
      }
      ),
    );
  }
  // Wrap  _tag2(){
  //   return Wrap(
  //     spacing: 3.0,
  //     children: List.generate(1, (int index) {
  //       return Chip(label: Text('Mouthwatering ${index+1}'),
  //       avatar: Icon(Icons.dining,
  //       color: Colors.black,
  //       ),
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0),
  //       side: BorderSide(color: Colors.grey),
  //       ),
  //       backgroundColor: Colors.grey.shade100,
  //       );
  //     }
  //     ),
  //   );
  // }
  // Column _ingredients(){
  //   Icon(Icons.timer);
  //    Text("Cooking time: Overnight (8 hours)");
  // }

   Column _ingredients(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
 
    //   Divider(),
    // Text('Orthopedic assessment',
    // style: TextStyle(color: Colors.black45,
    // fontSize: 17.0,
    // ),
    // ),
    // Row(
    //    children: [
    //       Container(
    //          width: MediaQuery.of(context).size.width -40,
    //           child: Text(
    //           "Cafe - Assorted Coffees & Teas - Breakfast and Brunch",
    //             style: TextStyle(fontSize: 13, height: 1.3),
    //                     ),
    //                   )
    //                 ],
    //               ),

    ListTile(
      leading: Icon(Icons.timer),
      title: Text('Cooking Time Required : Overnight (At least 4 Hours)',
      style: TextStyle(color: Colors.black45,
      fontSize: 13.0,
      ),
      ),
    ),
    // Text('Cooking Time Required : Overnight (8 Hours)',
    // style: TextStyle(color: Colors.black45,
    // fontSize: 13.0,
    //   ),
    // ),
    Text("Ingredients: ",
    style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
    ),
     ListTile(
       leading: Icon(Icons.fiber_manual_record,
       size: 10,
       ),
      title: Text('oats (I used old-fashioned roll oats)',
      style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
      ),
    ),
     ListTile(
        leading: Icon(Icons.fiber_manual_record,
       size: 10,
       ),
      title: Text('cacao powder (you can also use cocoa powder)',
      style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
      ),
    ),
    ListTile(
       leading: Icon(Icons.fiber_manual_record,
       size: 10,
       ),
      title: Text('non-dairy milk (you can use cashew, oats, hemp, almond, coconut, soy, or macadamia nut milk)',
      style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
      ),
    ),
    ListTile(
       leading: Icon(Icons.fiber_manual_record,
       size: 10,
       ),
      title: Text('yogurt (either Greek or coconut yogurt can be used for this recipe. To keep things vegan, you can use coconut or any other non-dairy yogurt)',
      style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
      ),
    ),
    ListTile(
       leading: Icon(Icons.fiber_manual_record,
       size: 10,
       ),
      title: Text('vanilla extract, chia seeds and fruits',
      style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
      ),
    ),
    ListTile(
       leading: Icon(Icons.fiber_manual_record,
       size: 10,
       ),
      title: Text('maple syrup or honey if not vegan',
      style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
      ),
    ),
    ListTile(
       leading: Icon(Icons.fiber_manual_record,
       size: 10,
       ),
      title: Text('dark chocolate chips (or chopped dark sugar-free chocolate)- to make this vegan, use dairy-free chocolate chips',
      style: TextStyle(color: Colors.black45,
    fontSize: 13.0,
      ),
      ),
    ),


    ],
    );
  }




}