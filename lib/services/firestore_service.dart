
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:priya_m1_191698r_cpmadproject/model/food_model.dart';
// import 'package:priya_m1_191698r_cpmadproject/screens/addreviews.dart';
// import 'package:flutter/cupertino.dart';


// class FirestoreService{
//   final CollectionReference foodReviews = FirebaseFirestore.instance.collection('food');

//   Future<void> addFoodData(
//     String userName, String Title, String Description) async{
//       var docRef = FirestoreService().foodReviews.doc();
//       print('add docRef: ' + docRef.id);

//       await foodReviews.doc(docRef.id).set({
//       'uid': docRef.id,
//       'name': userName,
//       "title": Title,
//       'description': Description
//       });
//     }

//     Future<List<Review>>readReviewData()async{
//       List<Review>ReviewList = []; 
//       QuerySnapshot snapshot = await foodReviews.get();

//       snapshot.docs.forEach((document) {
//         Review book = Review.fromMap(document.data());
//         ReviewList.add(book);
//        });
//        print('Food Reviews: $ReviewList');
//        return ReviewList;
//     }
//     Future<void> deleteReviewData(String docid) async{
//       foodReviews.doc(docid).delete();

//       print('deleting uid:' + docid);
//     }
//     Future<void>updateReviewData(
//       String userName, String Title, String Description) async{
//         var docRef = FirestoreService().foodReviews.doc();
//         print('update docRef:' + docRef.id);

//         await foodReviews.doc(docRef.id).update({
//           'uid': docRef.id,
//           'userName': userName,
//           'title': Title,
//           'description': Description
//         });
//       }
//       Future<void> deleteReviewDoc() async{
//         await foodReviews.get().then((snapshot){
//           for(DocumentSnapshot ds in snapshot.docs){
//             ds.reference.delete();
//           }
//         });
//       }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/addreviews.dart';
import 'package:priya_m1_191698r_cpmadproject/model/food_model.dart';
import 'package:flutter/cupertino.dart';

class FirestoreService{
  //Create a CollectionRefernece called bookCollection that references
  // the firestore collection

  final CollectionReference foodCollection = 
    FirebaseFirestore.instance.collection('food');

  Future<void> addFoodData(String userName, String Title, String Description) async {
    var docRef = FirestoreService().foodCollection.doc();
    print('add docRef: ' + docRef.id);

    await foodCollection.doc(docRef.id).set({
       'uid': docRef.id,
      'name': userName,
      "title": Title,
      'description': Description
    });
  }//addBookData

  Future<List<Review>> readFoodData() async{
    List<Review> bookList = [];
    QuerySnapshot snapshot = await foodCollection.get();

    snapshot.docs.forEach((document) {
      
      Review book = Review.fromMap(document.data());
      bookList.add(book);
    });

    print('Booklist: $bookList');
    return bookList;
  }//readBookData

  Future<void>deletefoodData(String docId) async{
    foodCollection.doc(docId).delete();

    print('deleting uid: ' + docId);
  }// deleteBookData
  
  //for reference
  Future<void>updateFoodData(String userName, String Title, String Description) async{
    var docRef = FirestoreService().foodCollection.doc();
    print('update docRef: ' + docRef.id);

    await foodCollection.doc(docRef.id).update({
      'uid': docRef.id,
      'name': userName,
      "title": Title,
      'description': Description
    });
  }//Update book data

  //for ref
  Future<void> deletefoodDoc() async{
    await foodCollection.get().then((snapshot){
      for (DocumentSnapshot ds in snapshot.docs){
        ds.reference.delete();
      }
    });
  }// delete book doc
}