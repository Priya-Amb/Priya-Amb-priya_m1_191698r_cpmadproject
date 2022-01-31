
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/data.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/login.dart';

class StartScreen extends StatefulWidget {

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  List<SliderModel>slides = new List<SliderModel>();
  int currentIndex = 0;
  PageController pageController = new PageController();

  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0:6.0,
      width: isCurrentPage ? 10.0:6.0,
      decoration: BoxDecoration(color:  isCurrentPage? Colors.grey: Colors.grey[300],
      borderRadius: BorderRadius.circular(12)
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
        itemCount: slides.length,
        onPageChanged: (val){
        setState(() {
            currentIndex = val;
        });
        },
        itemBuilder: (context, index){
         return SliderTile(
          imageAssetPath: slides[index].getImageAssetPath(),
          title: slides[index].getTitle(),
          desc: slides[index].getDesc(),
         );
        }),
        bottomSheet: currentIndex != slides.length - 1 ? Container(
          height: 50,
          padding:EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  pageController.animateToPage(slides.length - 1, duration: Duration(milliseconds:400), curve: Curves.linear);
                },
                child: Text("Skip")
                ),
              Row(
                children: <Widget>[
                for(int i = 0; i<slides.length; i++) currentIndex == i ?pageIndexIndicator(true) : pageIndexIndicator(false)
                ],
              ),
              GestureDetector(
                onTap: (){
                  pageController.animateToPage(currentIndex + 1, duration: Duration(milliseconds:400), curve: Curves.linear);
                },
                child: Text("Next")
              ),
            ],
          ),
        ) : Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: Colors.black,
          child: RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          child: Text("Get started now",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600
          ), ),
        ),
      ),
    );
  }
}


class SliderTile extends StatelessWidget {

String imageAssetPath, title, desc;
SliderTile({this.imageAssetPath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath),
          SizedBox(height: 20,),
          Text(title, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 12,),
          Text(desc, textAlign: TextAlign.center, 
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),)
        ],
      ),
    );
  }
}