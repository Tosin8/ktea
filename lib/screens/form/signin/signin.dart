import 'package:flutter/material.dart';

import 'body.dart';


class SignIn extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Sign In', 
          style: TextStyle(
            color: Colors.grey[800],
             fontSize: 20),
             ), 
         centerTitle: true,
      ), 
      body: SignInBody(), 
    ); 
  }
}