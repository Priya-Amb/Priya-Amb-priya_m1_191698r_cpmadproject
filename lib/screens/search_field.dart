// import 'package:flutter/material.dart';

// const kBorderRadius = 15.0;

// class SearchField extends StatelessWidget {

//   final controller = TextEditingController();
//   Function(String value) onSearch;

// final List<Map<String, dynamic>> _allRecipes = [
//     {"id": 1, "name": "Rice Noodles with Sweet Sticky Sauce"},
//     {"id": 2, "name": "Avocado Hummus Dip"},
//     {"id": 3, "name": "Vegan Salmon with Quinao Set"},
//     {"id": 4, "name": "Double Chcocolate Cake"},
//   ];
//   List<Map<String, dynamic>> _foundRecipes = [];
//    @override
//   initState() {
//     // at the beginning, all users are shown
//     _foundRecipes = _allRecipes;
//     @override
//       super.initState();
      
//     }

//   // This function is called whenever the text field changes
//   void _runFilter(String enteredKeyword) {
//     List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       // if the search field is empty or only contains white-space, we'll display all users
//       results = _allRecipes;
//     } else {
//       results = _allRecipes
//           .where((recipes) =>
//               recipes["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//       // we use the toLowerCase() method to make it case-insensitive
//     }

//     // Refresh the UI
//     setState(() {
//       _foundRecipes = results;
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(kBorderRadius),
//           borderSide: BorderSide.none,
//         ),
//         prefixIcon: Icon(Icons.search),
//         hintText: "what are you looking for",
//       ),
//       onEditingComplete: () {
//         FocusScope.of(context).unfocus();
//         if (onSearch != null) onSearch(controller.text);
//       },
//       textInputAction: TextInputAction.search,
//       style: TextStyle(color: Colors.grey[800]),
//     );
//   }
// }