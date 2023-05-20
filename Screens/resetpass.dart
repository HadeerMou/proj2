import 'package:flutter/material.dart';

import 'login.dart';

class reset extends StatelessWidget {
  final resetKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('Reset Password',style: TextStyle(color: Colors.white, fontSize: 25,)),
      backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child:Form(key: resetKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New password',
                  hintText: 'Enter new password',
                ),
                validator:(value){
                if(value!.isEmpty ||!RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$^&*()_-]).{8,18}\$/").hasMatch(value)){
                  return "Enter correct Password";
                }else{
                  return null;
                }
              }, 
                obscureText: true,),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'confirm new password',
                ),
                validator:(value){
                if(value!.isEmpty ||!RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$^&*()_-]).{8,18}\$/").hasMatch(value)){
                  return "Enter correct password";
                }else{
                  return null;
                }
              }, 
                obscureText: true,),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
              SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage(),));
            },
            child: Text('submit'),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
            ),
          ),
          )
            ],),
        ),),),);
  }
}