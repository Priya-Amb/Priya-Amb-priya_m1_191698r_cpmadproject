
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:priya_m1_191698r_cpmadproject/model/food_model.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/addreviews.dart';

class FirestoreService{
  final CollectionReference foodReviews = FirebaseFirestore.instance.collection('food');

  Future<void> addFoodData(
    String userName, String Title, String Description) async{
      var docRef = FirestoreService().foodReviews.doc();
      print('add docRef: ' + docRef.id);

      await foodReviews.doc(docRef.id).set({
      'uid': docRef.id,
      'name': userName,
      "title": Title,
      'description': Description
      });
    }

    Future<List<Review>>readReviewData()async{
      List<Review>ReviewList = []; 
      QuerySnapshot snapshot = await foodReviews.get();

      snapshot.docs.forEach((document) {
        Review book = Review.fromMap(document.data());
        ReviewList.add(book);
       });
       print('Food Reviews: $ReviewList');
       return ReviewList;
    }
    Future<void> deleteReviewData(String docid) async{
      foodReviews.doc(docid).delete();

      print('deleting uid:' + docid);
    }
    Future<void>updateReviewData(
      String userName, String Title, String Description) async{
        var docRef = FirestoreService().foodReviews.doc();
        print('update docRef:' + docRef.id);

        await foodReviews.doc(docRef.id).update({
          'uid': docRef.id,
          'userName': userName,
          'title': Title,
          'description': Description
        });
      }
      Future<void> deleteReviewDoc() async{
        await foodReviews.get().then((snapshot){
          for(DocumentSnapshot ds in snapshot.docs){
            ds.reference.delete();
          }
        });
      }
}