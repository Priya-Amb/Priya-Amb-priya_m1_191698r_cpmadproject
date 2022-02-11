import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/about.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipelist.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: layout(), backgroundColor: Colors.white);
  }

  Widget layout() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ListView(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'images/undraw_healthy_options.png',
              height: 150,
            ),
          ),
        ),
        Center(
          child: Text(
            "Edit Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.people, size: 18),
                hintText: 'Name',
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.black))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail, size: 18),
                hintText: 'Email',
                enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(
                  color: Colors.black,
                ))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, size: 18),
                hintText: 'Password',
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.black))),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Container(
          height: 50,
          width: 250,
          child: RaisedButton( 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
            child: Text(
              "Edit Now!",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
            color: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
                side: BorderSide(
                  color: Colors.black,
                )),
          ),
        ),
      ]),
    );
  }
}

// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:priya_m1_191698r_cpmadproject/screens/foodlist.dart';

// class Profile extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
  // final auth = FirebaseAuth.instance;
  // User user;
  // Timer timer;

  // @override
  // void initState() {
  //   user = auth.currentUser;
  //   user.sendEmailVerification();

  //   timer = Timer.periodic(Duration(seconds: 5), (timer) {
  //     checkEmailVerified();
  //   });
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   timer.cancel();
  //   super.dispose();
  // }

  // @override
  // Widget build(BuildContext context) {
    // return Scaffold(
    //   body: FutureBuilder(
    //     future: _fetch(),
    //     builder: (context, snapshot){
    //       if(snapshot.connectionState != ConnectionState.done)
    //       return Text("Loading  data... Please wait");
    //       return Text("Email: $myEmail");
    //     },
    //     child: Text(
    //         'An email has been sent to ${user.email} please verify'),
    //   ),
    // );
//  }

//   Future<void> checkEmailVerified() async {
//     user = auth.currentUser;
//     await user.reload();
//     if (user.emailVerified) {
//       timer.cancel();
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => FoodList()));
//     }
//   }
// }
//  _fetch() async {
//     final firebaseUser = await FirebaseAuth.instance.currentUser();
//     if (firebaseUser != null)
//       await Firestore.instance
//           .collection('users')
//           .document(firebaseUser.uid)
//           .get()
//           .then((ds) {
//         myEmail = ds.data['email'];
//         print(myEmail);
//       }).catchError((e) {
//         print(e);
//       });
//  }
