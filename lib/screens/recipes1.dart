import 'package:flutter/material.dart';

class Recipe1 extends StatefulWidget {
  final String imageUrl;

  const Recipe1({Key key, this.imageUrl})
      : super(key: key);
  @override
  _Recipe1 createState() => _Recipe1();
}

class _Recipe1 extends State<Recipe1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _buildBody(),
    );
  }

Widget _buildBody(){
    return SingleChildScrollView(child: Column(children: <Widget>[_bigImage(),
    SafeArea(
      child: Padding(padding: EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[_nameInfo(),
      // Divider(),
      // _favourites(),
      // Divider(),
      // _images(),
      ],),)
    )
    ],),);
  }

  // Image _bigImage(){
  //   return Image(image: AssetImage('assets/food_1.jpg'),
  //   height: 500,
  //   fit: BoxFit.cover,
  //   );
  // }

  Image _bigImage() {
    return Image(
      image: AssetImage(
        widget.imageUrl,),
        height: double.infinity,
        width: double.infinity,
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
    Row(
       children: [
          Container(
             width: MediaQuery.of(context).size.width -40,
              child: Text(
              "Recipe for 4 pax",
                style: TextStyle(fontSize: 13, height: 1.3),
                        ),
                      )
                    ],
                  ),
    // Text('oats (I used old-fashioned roll oats) chia seeds cacao powder (you can also use cocoa powder)
    //   non-dairy milk (you can use cashew, oats, hemp, almond, coconut, soy, or macadamia nut milk)
    //   yogurt (either Greek or coconut yogurt can be used for this recipe. To keep things vegan, you can use coconut or any other non-dairy yogurt)
    //   vanilla extract
    //   maple syrup or honey if not vegan
    //   dark chocolate chips (or chopped dark sugar-free chocolate)',
    // style: TextStyle(color: Colors.black45,
    // fontSize: 13.0,
    // ),
    // ),
    ListView(
      children: const <Widget>[
        ListTile(
              title: Text('- Oats (I used old-fashioned roll oats)'),
            ),
      ],
    ),
        ListTile(
              title: Text('- Chia seeds'),
            ),
         ListTile(
              title: Text('- Cacao powder (you can also use cocoa powder)'),
            ),
         ListTile(
              title: Text('- Non-dairy milk (you can use cashew, oats, hemp, almond, coconut, soy, or macadamia nut milk)'),
            ),
        ListTile(
              title: Text('- coconut yogurt'),
            ),
        ListTile(
              title: Text('- vanilla extract and maple syrup'),
            ),
        ListTile(
              title: Text('- Chopped dark sugar-free chocolate nuts and berries '),
            ),
    ],
    );
  }
}
