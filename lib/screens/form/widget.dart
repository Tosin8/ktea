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
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10), 
                  child: Icon(Icons.mail,)),

                labelText: 'Email', 
                hintText: 'Enter your email', hintStyle: TextStyle(color: Colors.grey[500]), 
                contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                floatingLabelBehavior: FloatingLabelBehavior.always, 
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  gapPadding: 10, 
                  borderSide: const BorderSide(color: Colors.orange),
                ), 
                focusedBorder: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(28), 
                  borderSide: const BorderSide(color: Colors.black), 
                  gapPadding: 10, 
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}