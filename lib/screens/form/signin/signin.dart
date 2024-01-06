import 'package:flutter/material.dart';

import 'body.dart';


class SignIn extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In', style: TextStyle(color: Colors.grey[800], fontSize: 18),), centerTitle: true,
      ), 
      body: SignInBody(), 
    ); 
  }
}