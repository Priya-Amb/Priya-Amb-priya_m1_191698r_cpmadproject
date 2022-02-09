import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/login.dart';
import 'package:priya_m1_191698r_cpmadproject/model/user_model.dart';
import 'package:priya_m1_191698r_cpmadproject/model/preference_helper.dart';

class MyDrawer extends StatefulWidget {
  final Function onTap;

  MyDrawer({this.onTap});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

UserModel userData;

  @override
  Widget build(BuildContext context) {
    getUserData();
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration:BoxDecoration(
               // color: Colors.blue,
                 image: DecorationImage(image: AssetImage('images/smallbackground.png'),
                fit: BoxFit.cover
              ),
            ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width:60,
                      height:60,
                      // child:CircleAvatar(
                      //   backgroundImage: AssetImage('images/image.png'),
                      //   ),
                    ),
                    SizedBox(height:15,),
                    Text(
                      userData?.firstName ?? "",
                     // 'Super Hero',
                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:Colors.black
                    ),
                     ),
                    //  SizedBox(height:3,),
                    // Text('Super_hero@nyp.edu.sg',
                    // style: TextStyle(fontSize: 12,
                    // color:Colors.black),
                    //  ),
                  ],
                  ),
                ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('FoodList'),
              onTap: ()=> widget.onTap(context,0,'FoodList'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Recipes'),
              onTap: ()=> widget.onTap(context,1,'Recipes'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('AddReviewPage'),
              onTap: ()=> widget.onTap(context,2,'AddReviewPage'),
            ),
            ListTile(
              leading: Icon(Icons.pending),
              title: Text('ShowReviewPage'),
              onTap: ()=> widget.onTap(context,3,'ShowReviewPage'),
            ),
             ListTile(
              leading: Icon(Icons.person,
              color: Colors.deepPurple,
              ),
              title: Text('Profile'),
              onTap: () => widget.onTap(context, 4, 'Profile'),
            ),
             ListTile(
              leading: Icon(Icons.home_repair_service,
              color: Colors.deepPurple,
              ),
              title: Text('About'),
              onTap: () => widget.onTap(context, 5, 'About'),
            ),
            ListTile(
              leading: Icon(Icons.search,
              color: Colors.deepPurple,
              ),
              title: Text('Search'),
              onTap: () => widget.onTap(context, 6, 'Search'),
            ),
           ListTile(
                leading: Icon(Icons.exit_to_app,
                color: Colors.deepPurple,
                ),
                title: Text('Logout'),
                onTap: () async {
                  await PreferenceHelper.clearStorage();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                }),
               ],
        ),
      ),
    );
  }
  getUserData() async {
    userData = await PreferenceHelper.getUserData();
    setState(() {});
  }
}

//}


