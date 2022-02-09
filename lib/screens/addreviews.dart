
import 'package:flutter/material.dart';
import 'package:priya_m1_191698r_cpmadproject/services/firestore_service.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddReviewPage extends StatefulWidget{
  @override
  _AddReviewPageState createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  String userName;
  String Title;
  String Description;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saving Food Reviews'), actions: <Widget>[]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'User Name'),
                  validator: (val) =>
                  val.length == 0 ? 'Enter User Name': null,
                  onSaved: (val) => this.userName = val,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Title'),
                  validator: (val) =>
                  val.length == 0 ? 'Enter Title': null,
                  onSaved: (val) => this.Title = val,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: 'Food Description'),
                  validator: (val) =>
                  val.length == 0 ? 'Enter description': null,
                  onSaved: (val) => this.Description = val,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: RaisedButton(
                    onPressed: _submit,
                    child: Text('Save Food Review'),
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit(){
    if(this.formKey.currentState.validate()){
      formKey.currentState.save();
    }
    else{
      return null;
    }

    FirestoreService().addFoodData(userName, Title, Description);

    Fluttertoast.showToast(msg: 'Data saved successfully', gravity: ToastGravity.TOP);
  }
}