import 'package:flutter/material.dart';

import 'body.dart';


class SignIn extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        
      ), 
      body: SignInBody(), 
    ); 
  }
}