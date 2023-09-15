import 'package:flutter/material.dart';

import 'SecondApp.dart';

void main() {
  runApp( MaterialApp(
      home: MyApp()
  )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget{
  @override
  State<MyCustomForm> createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm>{

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key : formKey,
      child: Column(
        children: [
          Text('SignIn',
            style: TextStyle(fontSize: 20,color: Colors.black),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please Enter Value';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondApp()));
            },
            child: Text('Sign In'),
          )
        ],
      ),
    );
  }
}