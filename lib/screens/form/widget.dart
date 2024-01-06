import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  const AppForm({super.key});

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email', 
              hintText: 'Enter your email', 
              floatingLabelBehavior: FloatingLabelBehavior.always, 
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                gapPadding: 10, 
                borderSide: BorderSide(color: Colors.orange),
              ), 
              focusedBorder: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(28), 
                borderSide: BorderSide(color: Colors.black), 
                gapPadding: 10, 
              )
            ),
          )
        ],
      ),
    );
  }
}