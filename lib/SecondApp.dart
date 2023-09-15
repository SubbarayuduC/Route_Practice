
import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondScreen'),
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
          Text('SignOut',style: TextStyle(fontSize: 20,color: Colors.black),
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
              Navigator.pop(context);
            },
            child: Text('Sign In Out'),
          )
        ],
      ),
    );
  }
}