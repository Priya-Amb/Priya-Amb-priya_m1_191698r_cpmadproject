// main.dart
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/screens/recipes1.dart';


class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
List<Image> images = [
    Image.asset("images/RiceNoodles withSweetStickySauce.jpg"),
  ];

  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allRecipes = [
    {"id": 1, "name": "Rice Noodles with Sweet Sticky Sauce"},
    {"id": 2, "name": "Avocado Hummus Dip"},
    {"id": 3, "name": "Vegan Salmon with Quinao Set"},
    {"id": 4, "name": "Double Chcocolate Cake"},
  ];
  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundRecipes = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundRecipes = _allRecipes;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allRecipes;
    } else {
      results = _allRecipes
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundRecipes = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: _foundRecipes.isNotEmpty ? ListView.builder(
                    itemCount: _foundRecipes.length,
                    itemBuilder: (context , index) => Card(
                      key: ValueKey(_foundRecipes[index]["id"]),
                      color: Colors.amberAccent,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => Recipe1()
                            )
                          );
                        },
                        leading: Text(
                          _foundRecipes[index]["id"].toString(),
                          style:  const TextStyle(fontSize: 15),
                        ),
                        title: Text(_foundRecipes[index]['name'],
                        style:  const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                ): const Text('No results found',
                style: TextStyle(fontSize: 15),
                ),
              ),
          ],
        ),
      ),
    );
  }
}