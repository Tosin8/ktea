// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  const AppForm({super.key});

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            buildEmailFormField(label: 'Email', hint: 'Enter your email',
              
            ), 

            SizedBox(height: 30), 
            buildPwdFormField(label: 'Password',hint: 'Enter your password',), 
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class buildPwdFormField extends StatelessWidget {
   const buildPwdFormField({
    super.key, required this.label, required this.hint,
  });

final String label; 
final String hint; 


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.key_rounded,)),
    
        labelText: label, 
        hintText: hint, hintStyle: TextStyle(color: Colors.grey[500]), 
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
    );
  }
}

// ignore: camel_case_types
class buildEmailFormField extends StatelessWidget {
  const buildEmailFormField({
    Key? key,
    required this.label,
    required this.hint,
  }) : super(key: key);

final String label; 
final String hint; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.mail_outline,)),
    
        labelText: label, 
        hintText: hint, hintStyle: TextStyle(color: Colors.grey[500]), 
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
    );
  }
}