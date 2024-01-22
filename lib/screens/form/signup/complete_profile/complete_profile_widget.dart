import 'package:flutter/material.dart';
import 'package:ktea/screens/form/widget.dart';

class AppForm2 extends StatefulWidget {
  const AppForm2({super.key});

  @override
  State<AppForm2> createState() => _AppForm2State();
}

class _AppForm2State extends State<AppForm2> {
  @override
  Widget build(BuildContext context) {
    return const Form( 
      child: Padding(padding: EdgeInsets.only(left: 15, right: 15), 
      child: Column(
        children: [
          buildUserFirstFormField(label: 'First Name',
           hint: 'Enter your first name', 
           validator: (){}, 
           onSaved: onSaved)
        ],
      ),),
    );
  }
}