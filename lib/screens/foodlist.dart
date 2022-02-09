import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/about.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/description.dart';
import 'package:priya_m1_191698r_cpmadproject/model/cartController.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/cartPage.dart';

class FoodList extends StatefulWidget{
  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  final _foodName = [
    'Canberry Bagal',
    'Fig Caramel Milkshake',
    'Assorted Fruits Salad',
    'Berry Pie',
    'Blackberry Waffles',
    'Chickpea Burger',
  ];

  final _foodPrice = [
    '\$9.80',
    '\$8.40',
    '\$3.20',
    '\$9.30',
    '\$12.90',
    '\$4.70'
  ];

  @override
  Widget build(BuildContext context) {
    var cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
       // title: Text('Product Page (Get)'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200.0,
              width: 30.0,
              child: InkWell(
                splashColor: Colors.redAccent,
                highlightColor: Colors.blueAccent.withOpacity(0.5),
                onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => CartPage(),
                  ),
                );
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
            child: _buildGridCards(index, 'assets/food_${index + 1}.jpg', _foodName[index], _foodPrice[index]),
          );
        }),
      ),
    );
  }

  Widget _buildGridCards(int index, String imgPath, String foodName, String foodPrice){
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
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        Text(foodName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        Text(foodPrice, style: TextStyle(fontSize: 14.0),
        ),
         FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsPage()
                      ));
                    },
                    mini: true,
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    child: Center(
                        child: Icon(Icons.arrow_forward, color: Colors.black)),
                  ),
      ],
    ),
    );
  }
}