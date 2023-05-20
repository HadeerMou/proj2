import 'package:ecommerce/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Home.dart';
import 'forgetpass.dart';

class loginPage extends StatelessWidget {
  final loginKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return MaterialApp(
      home: Scaffold(
        key:  _scaffoldKey,
      appBar: AppBar(title: Text('Login Page',style: TextStyle(color: Colors.white, fontSize: 25,),),
      backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Form(key: loginKey,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(child: Text("Welcome ",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      margin: EdgeInsets.all(20.0),),
            Container(
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
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                hintText: 'Enter password',
              ),
              validator:(value){
              if(value!.isEmpty ||!RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$^&*()_-]).{8,18}\$/").hasMatch(value)){
                return "Enter correct password";
              }else{
                return null;
              }
            },
              obscureText: true,),
        padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),),
        SizedBox(
          height: 10,
        ),
        Container(
          child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => forgetpass(),));
          },
          child: Text('Forget Password?'),
        ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: ElevatedButton(
          onPressed: () {
            if(loginKey.currentState!.validate()){
             Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
            }else{
              return;
            }
          },
          child: Text('sign in'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
          )
        ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
        children: [
          Container(child: Text("Don't have account?"),),
          TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => signup(),));
          },
          child: Text('Sign up'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
          ),
        ),],
        ),
      ],
        ), ),
    ),),);
  }
}