import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/about.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/description.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes1.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/search.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/home.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/login.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipelist.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/showreviews.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/start.dart';
import 'package:priya_m1_191698r_cpmadproject/w_jsonparser.dart';
import 'package:get/get.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(debugShowCheckedModeBanner: false, home: StartScreen());
   //return GetMaterialApp(debugShowCheckedModeBanner: false, home: RecipeList());
  }
}
