// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            const buildEmailFormField(
              label: 'Email', hint: 'Enter your email',
              
            ), 

            const SizedBox(height: 30), 
            const buildPwdFormField(
              label: 'Password',hint: 'Enter your password',), 
              const SizedBox(height: 40), 
              Row(
                children: [
                  Checkbox(
                    value: false,
                     onChanged: (bool? value) {  },
                  ), 
                  const Text('Remember me'),
                  const SizedBox(width: 100), 
                  Expanded(child: GestureDetector(
                    onTap: () {
                      
                    },
                    child: const Text('Forgot Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    ),)))
                ],
              ), 
              SizedBox(height: 40), 
              DefaultButton(textBtn: 'Continue', press: () {  },),
              SizedBox(height: 40), 
              Text('- OR USE - ') , 
              SizedBox(height: 20), 
            
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

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.textBtn, required this.press});

final String textBtn; 
final GestureTapCallback press; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press, 
      child: Container(
        width: 350, height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.orange
        ),
        child: Align(
          child: Text(textBtn, 
          style: const TextStyle(color: Colors.white, fontSize: 20,
          fontWeight: FontWeight.w500),),
        ),
      ),
    );
  }
}

class SocialBtn extends StatelessWidget {
  const SocialBtn({super.key, required this.icon});

 final IconData icon; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40, width: 40, 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6) , 
            blurRadius: 10, 
            color: Color(0xffb0b0b0).withOpacity(0.2), 
          )
        ]
      ),
      child: TextButton(onPressed: () {  },
      child: Icon(icon)),
    ); 
    
  }
}