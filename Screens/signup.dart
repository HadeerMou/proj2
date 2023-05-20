import 'package:flutter/material.dart';

import 'Home.dart';

class signup extends StatelessWidget {
  final signupkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('Signup Page',style: TextStyle(color: Colors.white, fontSize: 25,)),
      backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child:Form(key: signupkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  hintText: 'Enter username',
                  prefixIcon: Icon(Icons.verified_user),
                ),
                validator:(value){
              if(value!.isEmpty ||!RegExp("/^[a-zA-Z0-9_-]{3,16}\$/").hasMatch(value)){
                return "Enter correct username";
              }else{
                return null;
              }
            }, 
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  hintText: 'Enter email address',
                ),
               validator:(value){
              if(value!.isEmpty ||!RegExp("/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,63})\$/").hasMatch(value)){
                return "Enter valid Email";
              }else{
                return null;
              }
            }, 
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  labelText: 'Password',
                  hintText: 'Enter password',
                ),
                validator:(value){
              if(value!.isEmpty ||!RegExp("^(?=.*[A-Z].*[A-Z])(?=.*[!@#\$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}\$").hasMatch(value)){
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
                  labelText: 'Confirm password',
                  hintText: 'Enter password',
                  prefixIcon: Icon(Icons.password),
                ),
                validator:(value){
              if(value!.isEmpty ||!RegExp("^(?=.*[A-Z].*[A-Z])(?=.*[!@#\$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}\$").hasMatch(value)){
                return "Enter correct Password";
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
            if(signupkey.currentState!.validate()){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
            }else{
              return;
            }
            },
            child: Text('sign up'),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
            ),
          ),
          ),
              ],),
        ),
    ),),);
  }
}