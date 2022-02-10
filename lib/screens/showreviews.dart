import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/model/food_model.dart';

import 'package:priya_m1_191698r_cpmadproject/services/firestore_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


// class ShowReviews extends StatefulWidget {
//   ShowReviews({Key key}) : super(key: key);

//   @override
//   State<ShowReviews> createState() => _ShowReviewsState();
// }

// class _ShowReviewsState extends State<ShowReviews> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Book Records'),
//       ),

//       body: FutureBuilder<List<Review>>(
//         future: FirestoreService().readReviewData(),
//         builder: (context, snapshot){
//           if(snapshot.hasData){
//             return ListView.builder(
//               itemCount: snapshot.data.length,
//               itemBuilder: (context, index){
//                 return Card(
//                   elevation: 5,
//                   child: Row(   
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         snapshot.data[index].name,
//                         style: TextStyle(color: Colors.blue, fontSize: 16.0),
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             snapshot.data[index].title,
//                             style: TextStyle(color: Colors.black, fontSize: 14.0),
//                           ),
//                           Text(
//                             snapshot.data[index].description,
//                             style: TextStyle(color: Colors.black, fontSize: 12.0),
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                         color: Colors.blue,
//                         icon: Icon(Icons.delete),
//                         onPressed: () async{
//                           setState(() {
//                             FirestoreService().deleteReviewData(snapshot.data[index].uid);
//                           });
//                           Fluttertoast.showToast(
//                             msg: "Data deleted successfully",
//                             gravity: ToastGravity.TOP);
//                         },
//                       )
//                     ],
//                   ),
//                 );
//               },
//             );
//           } else if(snapshot.hasError){
//             return Text("${snapshot.error}");
//           }
//           return Container(
//             alignment: AlignmentDirectional.center,
//             child: CircularProgressIndicator(),
//           );
//         }
//       ),
//     );
//   }
// }// Records Page State

class ShowReviews extends StatefulWidget {
  ShowReviews({Key key}) : super(key: key);

  @override
  State<ShowReviews> createState() => _ShowReviewsState();
}

class _ShowReviewsState extends State<ShowReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Records'),
      ),

      body: FutureBuilder<List<Review>>(
        future: FirestoreService().readFoodData(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                return Card(
                  elevation: 5,
                  child: Row(   
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        snapshot.data[index].name,
                        style: TextStyle(color: Colors.blue, fontSize: 16.0),
                      ),
                      Column(
                        children: [
                          Text(
                            snapshot.data[index].title,
                            style: TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                          Text(
                            snapshot.data[index].description,
                            style: TextStyle(color: Colors.black, fontSize: 12.0),
                          ),
                        ],
                      ),
                      IconButton(
                        color: Colors.blue,
                        icon: Icon(Icons.delete),
                        onPressed: () async{
                          setState(() {
                            FirestoreService().deletefoodData(snapshot.data[index].uid);
                          });
                          Fluttertoast.showToast(
                            msg: "Data deleted successfully",
                            gravity: ToastGravity.TOP);
                        },
                      )
                    ],
                  ),
                );
              },
            );
          } else if(snapshot.hasError){
            return Text("${snapshot.error}");
          }
          return Container(
            alignment: AlignmentDirectional.center,
            child: CircularProgressIndicator(),
          );
        }
      ),
    );
  }
}// Records Page State