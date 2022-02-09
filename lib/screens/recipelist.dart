
import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/model/custom_slider.dart';
import 'package:priya_m1_191698r_cpmadproject/model/cartController.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/cartPage.dart';
import 'package:filter_list/filter_list.dart';

class RecipeList extends StatefulWidget {
  @override
  _RecipeListState createState() =>  _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {



// final List<Map<String, dynamic>> _allRecipes = [
//     {"id": 1, "jobs": "Web Developer"},
//     {"id": 2, "jobs": "UI/UX Designer"},
//     {"id": 3, "jobs": "F&B Management"},
//     {"id": 4, "jobs": "Software Developer"},
//     {"id": 5, "jobs": "Administration"},
//   ];
// List<Map<String, dynamic>> _foundRecipes = [];

// void _runFilter(String enteredKeyword) {
//     List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       // if the search field is empty or only contains white-space, we'll display all users
//       results = _allRecipes;
//     } else {
//       results = _allRecipes
//           .where((user) =>
//               user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//       // we use the toLowerCase() method to make it case-insensitive
//     }
//     setState(() {
//       _foundRecipes = results;
//     });
//   }

// List<String> countList = [
//     "Web Developer",
//     "UI/UX Designer",
//     "F&B Management",
//     "BA",
//     "HR",
//     "PA",
//     "Marketing Consultant",
//     "Software Engineer",
//     "Software Developer",
//     "Data Analyst",
//     "Project Management",
//     "Event Management",
//     "Cybersecurity",
//     "Administration",
//     "Marine Biologist",
//     "Architect",
//     "Singapore",
//     "Malaysia",
//     "Indonesia",
//     "Australia",
//     "Germany",
//     "South Korea",
//     "Thailand",
//     "Maldives"
//   ];
//    List<String> selectedCountList = [];

//   void _openFilterDialog() async {
//     await FilterListDialog.display<String>(context,
//         listData: countList,
//         selectedListData: selectedCountList,
//         height: 500,
//         headlineText: "Filter",
//         validateSelectedItem: (list, val) => list.contains(val),
//        onItemSearch: (list, text) {
//       return list.toLowerCase().contains(text.toLowerCase());
//     },
//     onApplyButtonClick: (list){
//       setState(() {
//           selectedCountList = List.from(list);
//         });
//       Navigator.pop(context);
//     },
//   );
// }

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
                  Container(
                    width: 360,
                    padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(2),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            contentPadding:
                                EdgeInsets.only(left: 15.0, top: 15.0),
                            hintText: 'Search for recipes',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
            // Container(
            //   width: 130,
            //   padding: const EdgeInsets.only(
            //     top: 15.0,
            //     right: 20,
            //   ),
            //   child: RaisedButton(
            //     color: Colors.white,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //       side: BorderSide(
            //         color: Colors.grey,
            //       ),
            //     ),
            //     child: Row(
            //       children: [
            //         Icon(
            //           Icons.filter_alt_outlined,
            //           color: Colors.grey,
            //         ),
            //         Text(
            //           'Filters',
            //           style: TextStyle(color: Colors.grey, fontSize: 18.0),
            //         ),
            //         selectedCountList == null || selectedCountList.length == 0
            //             ? Center()
            //             : ListView.separated(
            //                 itemBuilder: (context, index) {
            //                   return ListTile(
            //                     title: Text(selectedCountList[index]),
            //                   );
            //                 },
            //                 separatorBuilder: (context, index) => Divider(),
            //                 itemCount: selectedCountList.length)
            //       ],
            //     ),
            //     // onPressed: () async {
            //     //   //Filter funtion

            //     // },
            //     onPressed: _openFilterDialog,
            //   ),
            // ),
 
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
                  // Container(
                  //   padding: EdgeInsets.only(top: 15.0, left: 15.0),
                  //   height: 125.0,
                  //   child: ListView(
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.horizontal,
                  //     children: <Widget>[
                  //       _foodCard1(),
                  //       SizedBox(width: 10.0),
                  //       _foodCard2(),
                  //       SizedBox(width: 10.0),
                  //       // _foodCard3(),
                  //       // SizedBox(width: 10.0),
                  //     ],
                  //   ),
                  // ),
                  //   SizedBox(height: 10.0),
                  // CustomSliderWidget(
                  //   items: [
                  //     "images/1.png",
                  //     "images/2.png",
                  //     "images/3.png"
                  //   ],
                  // ),
          // SizedBox(height: 30,),
          // InkWell(
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(
          //      builder: (_) => DetailPage()
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
  
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                  width: (MediaQuery.of(context).size.width - 80) / 2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/RiceNoodles withSweetStickySauce.jpg"),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: (MediaQuery.of(context).size.width - 80) / 2,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/AvocadoHummusDip.jpg"),fit: BoxFit.cover)
                  ),
                ),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: <Widget>[
                  Container(
                  width: (MediaQuery.of(context).size.width - 80) / 2,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/VeganSalmonWithQuinaoSet .jpg"),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: (MediaQuery.of(context).size.width - 80) / 2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("images/DoubleChcocCake.jpg"),fit: BoxFit.cover)
                  ),
                ),
       ],
              ),
              
            ],
            
      ),
            ],
      ),
        ],
       ),
        ],
      ),
      ),
    );
  }


  // Widget _foodCard1() {
  //   return Container(
  //     height: 150.0,
  //     width: 290.0,
  //     decoration: BoxDecoration(
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.5),
  //           spreadRadius: 1,
  //           blurRadius: 3,
  //            offset: Offset(5,5),
  //         )
  //       ],
  //       borderRadius: BorderRadius.circular(12.0),
  //       color: Colors.white,
  //       border: Border.all(
  //         color: Colors.grey[300],
  //       )
  //     ),
      
  //     child: Row(
  //       children: <Widget>[
  //         Container(
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(12.0),
  //               image:
  //                   DecorationImage(image: AssetImage('images/BerryCremeTart.jpg'))),
  //           height: 200.0,
  //           width: 145.0,
  //         ),
  //         SizedBox(width: 20.0),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Text(
  //               'Mixed Berries',
  //               style: TextStyle(fontFamily: 'Basic Sans'),
  //             ),
  //             Text(
  //               'with Creme Tarts',
  //               style: TextStyle(fontFamily: 'Basic Sans'),
  //             ),
  //             SizedBox(height: 10.0),
  //             Container(
  //               height: 2.0,
  //               width: 75.0,
  //               color: Colors.orange,
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
  //   Widget _foodCard2() {
  //   return Container(
  //     height: 150.0,
  //     width: 290.0,
  //      decoration: BoxDecoration(
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.5),
  //           spreadRadius: 1,
  //           blurRadius: 3,
  //            offset: Offset(5,5),
  //         )
  //       ],
  //       borderRadius: BorderRadius.circular(12.0),
  //       color: Colors.white,
  //       border: Border.all(
  //         color: Colors.grey[300],
  //       )
  //     ),
  //     child: Row(
  //       children: <Widget>[
  //         Container(
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(12.0),
  //               image:
  //                   DecorationImage(image: AssetImage('images/3Bagal.jpg'))),
  //           height: 200.0,
  //           width: 145.0,
  //         ),
  //         SizedBox(width: 20.0),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Text(
  //               'Assorted Multigrain',
  //               style: TextStyle(fontFamily: 'Basic Sans'),
  //             ),
  //             Text(
  //               ' Sourdough',
  //               style: TextStyle(fontFamily: 'Basic Sans'),
  //             ),
  //             SizedBox(height: 10.0),
  //             Container(
  //               height: 2.0,
  //               width: 75.0,
  //               color: Colors.orange,
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
  // Widget _foodCard3() {
  //   return Container(
  //     height: 150.0,
  //     width: 290.0,
  //     decoration: BoxDecoration(
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.5),
  //           spreadRadius: 1,
  //           blurRadius: 3,
  //            offset: Offset(5,5),
  //         )
  //       ],
  //       borderRadius: BorderRadius.circular(12.0),
  //       color: Colors.white,
  //       border: Border.all(
  //         color: Colors.grey[300],
  //       )
  //     ),
  //     child: Row(
  //       children: <Widget>[
  //         Container(
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(12.0),
  //               image:
  //                   DecorationImage(image: AssetImage('images/MixedGrainDish.jpg'))),
  //           height: 200.0,
  //           width: 145.0,
  //         ),
  //         SizedBox(width: 20.0),
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Text(
  //               'Mixed Rice and',
  //               style: TextStyle(fontFamily: 'Basic Sans'),
  //             ),
  //             Text(
  //               'Grilled Potato Set',
  //               style: TextStyle(fontFamily: 'Basic Sans'),
  //             ),
  //             SizedBox(height: 10.0),
  //             Container(
  //               height: 2.0,
  //               width: 75.0,
  //               color: Colors.orange,
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
  
}