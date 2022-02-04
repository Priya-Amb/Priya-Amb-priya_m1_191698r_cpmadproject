import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:priya_m1_191698r_cpmadproject/model/CartController.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/cartPage.dart';

class Recipes extends StatelessWidget{
  final _shoeName = [
    'Kaptir Super',
    'Ultra Boost',
    'Ultra DNA',
    'Air Force Flyknit',
    'Pegasus Trail',
    'React Infinity'
  ];

  final _shoePrice = [
    '\$128.0',
    '\$132.0',
    '\$139.0',
    '\$205.0',
    '\$146.0',
    '\$130.0'
  ];

  @override
  Widget build(BuildContext context) {
    var cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page (Get)'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.0,
              width: 30.0,
              child: InkWell(
                splashColor: Colors.redAccent,
                highlightColor: Colors.blueAccent.withOpacity(0.5),
                onTap: (){
                  // Navigator.push(
                  //context,
                  //MaterialPageRoute(
                  //builder: (context) => CartPage(),
                  //),
                //);
                Get.to(() => CartPage());
                },
                child: Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      onPressed: null,
                    ),
                    Positioned(
                      child: Stack(
                        children: <Widget>[
                          Icon(Icons.brightness_1,
                          size: 20.0, color: Colors.red[700]),
                          Positioned(
                            top: 3.0,
                            right: 7,
                            child: Center(
                              child: Obx(
                                () => Text(
                                  cartController.count.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                                ),
                              ),
                            )),
                        ],
                      )),
                  ],
                ),
              )),
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6,(index){
          return InkWell(
            splashColor: Colors.blueAccent,
            highlightColor: Colors.blueAccent.withOpacity(1.0),
            onTap: (){
              cartController.addToCart(index);
            },
            child: _buildGridCards(index, 'images/shoe_${index + 1}.jpg', _shoeName[index], _shoePrice[index]),
          );
        }
        ),
      ),
    );
  }
  Widget _buildGridCards(int index, String imgPath, String shoeName, String shoePrice){
    return Card(
      color: Colors.lightBlueAccent[50],
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 140,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        Text(shoeName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        Text(shoePrice, style: TextStyle(fontSize: 14.0),
        ),
      ],
    ),
    );
  }
}