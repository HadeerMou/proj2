import 'package:ecommerce/Screens/resetpass.dart';
import 'package:flutter/material.dart';

class forgetpass extends StatelessWidget {
  final forgetKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('Forgot Password?', style: TextStyle(color: Colors.white, fontSize: 25,)),
      backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child:Form(key: forgetKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'example@abc.com',hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  prefixIcon: Icon(Icons.email),
                ),
                validator:(value){
                if(value!.isEmpty ||!RegExp("/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,63})\$/").hasMatch(value)){
                  return "Enter valid email";
                }else{
                  return null;
                }
              }, 
              ),
          padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
            onPressed: () {
            if(forgetKey.currentState!.validate()){
              Navigator.push(context, MaterialPageRoute(builder: (context) => reset(),));
            }else{
              return;
            }
            },
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[100]
            ),
          ),
          )
          ],
            ),
        ),),),);
  }
}