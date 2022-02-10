// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:priya_m1_191698r_cpmadproject/screens/profile.dart';

// class UserManagement{
//   storeNewUser(users,context) async{
//     var firebaseUser = await FirebaseAuth.instance.currentUser();
//     Firestore.instance
//     .collection(users)
//     .document(firebaseUser.uid)
//     .setData({'email': users.email,'uid': users.uid})
//     .then((value)=> Navigator.push(
//       context, MaterialPageRoute(builder: (context) => Profile())))
//       .catchError((e){
//         print(e);
//       });
//   }
// }