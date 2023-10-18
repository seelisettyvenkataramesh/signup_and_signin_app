import 'package:flutter/material.dart';

import 'MyHome.dart';

void main(){
  runApp(
      MaterialApp(
    home: MyApp()   ));}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
          title: Text('Sign Up Page',style: TextStyle(color: Colors.blue),),
        ),backgroundColor: Colors.cyan,
        body: MyHomeState(),
      ),
    );
  }

}

class MyHomeState extends StatefulWidget{
  @override

  State<MyHomeState> createState() => _MyHomeState();

}

class _MyHomeState extends State<MyHomeState>{

  @override
  final fronkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
  return Form(
    key:fronkey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "User Name"
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return 'Please Enter Value';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Enter Last Name"
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return 'Please Enter Value';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Email'
              ),


             validator: (value){
               if(value==null || value.isEmpty){
                 return 'Enter Value';
    }
               return null;
    },

              ),
            ),

          ElevatedButton(
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
               },
              child: Text('Sign Up',
                style: TextStyle(color: Colors.orange),)),
        ]
      ),


  );
  }


}


