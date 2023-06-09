
import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/authentication/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Home_screen.dart';


void main()=>runApp(MaterialApp(

  home: LoginScreen(),
));

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            TextField(

              keyboardType: TextInputType.emailAddress,
              controller: _emailTextEditingController,
              decoration: InputDecoration(labelText: "Email",hintText: "Enter mail",border: OutlineInputBorder()),
            ),SizedBox(height: 20,),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              controller: _passwordTextEditingController,
              decoration: InputDecoration(labelText: "Password",hintText: "Enter Password",border: OutlineInputBorder()),
            ),SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                login(_emailTextEditingController, _passwordTextEditingController);
              }, child: Text("Login")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> RegisterScreen()));
            }
                , child:   Text("Create new account"))
          ],
        ),
      ),
    );
  }
}
login(_emailTextEditingController,_passwordTextEditingController){
  String email = _emailTextEditingController.text;
  String password =  _passwordTextEditingController.text;
  
  print("$email and $password");
  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value){
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text("User logged in")));
    Navigator.pushAndRemoveUntil(context as BuildContext, MaterialPageRoute(builder: (ctx)=> HomeScreen()), (route) => false);
  })
      .catchError((e){
    ScaffoldMessenger.of(context as BuildContext).showSnackBar(SnackBar(content: Text("User acount creation failed"+e.toString())));
  });

  
}
