import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/start.dart';
import 'package:get/get.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipelist.dart';

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
   // return GetMaterialApp(debugShowCheckedModeBanner: false, home: StartScreen());
   return GetMaterialApp(debugShowCheckedModeBanner: false, home: RecipeList());
  }
}
