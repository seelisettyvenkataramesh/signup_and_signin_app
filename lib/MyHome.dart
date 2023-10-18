


import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
          home: MyHome( )));
}
class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.yellow,
          title: Text('Sign In Page',style: TextStyle(color: Colors.black),),
        ),backgroundColor: Colors.red,
        body: MyAppState(),
      ),
    );

  }


}

class MyAppState extends StatefulWidget{
  @override
  State<MyAppState> createState() => _MyAppStateState();


}

class _MyAppStateState extends State<MyAppState> {
  @override
  final fromkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
        key: fromkey,

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Id'
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Enter Value';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return 'Enter Value';
                }
                return null;
              },
            ),),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Enter Value';
                  }
                  return null;
                },
              ),),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Sign In',
                  style: TextStyle(color: Colors.pink),),
            ),
          ],
        ),
    );
  }

}
