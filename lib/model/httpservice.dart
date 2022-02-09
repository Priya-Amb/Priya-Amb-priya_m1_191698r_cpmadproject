// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:priya_m1_191698r_cpmadproject/screens/foodvalue.dart';

// // class HttpService{
// //   static const String url = 
// //   'https://data.gov.sg/api/action/datastore_search?resource_id=f60c8cea-7e1c-4dae-a550-2f6db43e0946&limit=5';

// //   static Future<List<Record>> getFoodValue() async{
// //     try{
// //       final response = await http.get(Uri.parse(url), headers:{
// //         'accept': 'application/json'
// //       });
// //       if(response.statusCode == 200){
// //      // final Welcome w = welcomeFromJson(response.body);
// //       final Record = jsonDecode(response.body);
// //      //return w.result;
// //       }else{
// //         return List<Record>();
// //       }
// //     }catch(e){
// //       print('Error ${e.toString()}');
// //       return List<Record>();
// //     }
// //   }
// // }

// class HttpService extends StatefulWidget {

//   @override
//   State<HttpService> createState() => _HttpServiceState();
// }

// class Debouncer{
//   final int msecond;
//   VoidCallback action;
//   Timer _timer;

//   Debouncer({this.msecond});
//   run(VoidCallback action){
//     if(null != _timer){
//       _timer.cancel();
//     }
//     _timer = Timer(Duration(milliseconds: msecond), action);
//   }
// }

// class _HttpServiceState extends State<HttpService> {
//   @override
  
//   List Record = [];

//   Future<void>getFoodValue() async{
//     const API_URL = 'https://data.gov.sg/api/action/datastore_search?resource_id=f60c8cea-7e1c-4dae-a550-2f6db43e0946&limit=5';

//     final response = await http.get(Uri.parse(API_URL));
//     final data = json.decode(response.body);

//     setState(() {
//       Record = data;
//     });
//   }
//    final debouncer = Debouncer(msecond: 1000);
//  List<Record> _w;
//   bool _loading;

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _loading = true;
//   //   HttpService.getFoodValue().then((w){
//   //     setState(() {
//   //       List Record;
//   //       _loading = false;
//   //     });
//   //   });
//   // }
//   Widget build(BuildContext context) {
//      return Scaffold(
//       appBar: AppBar(
//         title: Text(_loading ?'Loading...' : 'Food Value' ),
//       ),
//          body: Container(
//         padding: EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             searchTF(),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: null == _w ? 0 : _w.length,
//                 itemBuilder: (context, index){
//                   Record wAvail = _w[index];
//                   return Card(
//                     child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Column(    
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('brand_and_product_name: ' + wAvail.brandAndProductName.toString().split('.').last,
//                            style: TextStyle(fontSize: 16.0, color: Colors.black),
//                           ),
//                           SizedBox(height: 5.0),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('package_size: ' + wAvail.packageSize,
//                               style: TextStyle(fontSize: 14.0, color: Colors.black87),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 }
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget searchTF(){
//     return TextField(
//       decoration: InputDecoration(   
//         border: OutlineInputBorder(
//           borderRadius: const BorderRadius.all(
//             const Radius.circular(5.0),
//           ),
//         ),
//         filled: true,
//         fillColor: Colors.white60,
//         contentPadding: EdgeInsets.all(15.0),
//         hintText: 'Filter by Area',
//       ),
//       onChanged: (string){
//         debouncer.run((){
//           HttpService.getFoodValue().then((uw){
//             setState(() {
//               _w = Record.filterList(uw, string);
//             });
//           });
//         });
//       },
//     );
//   }
// }