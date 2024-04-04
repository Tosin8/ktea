import 'package:flutter/material.dart';
import 'package:ktea/features/auth/screens/widget.dart';

class ForgotPwdForm extends StatefulWidget {
  const ForgotPwdForm({super.key});

  @override
  State<ForgotPwdForm> createState() => _ForgotPwdFormState();
}

class _ForgotPwdFormState extends State<ForgotPwdForm> {
  final formKey = GlobalKey<FormState>();

  final List<String> errors = []; 

  late String email; 
  late String resetcode; 
  @override
  Widget build(BuildContext context) {
    return 
    Form( 
      key: formKey, 
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right:15.0),
        child: Column( 
          children: [
            buildEmailFormField(label: 'Email',
             hint:'Enter your registerd email', 
             validator:(value) {
                  if (value.isEmpty) {
                    setState(() {
                      errors.add('Email not found');
                    });
                  }
                  return null; 
                },  onSaved: (value) => email = value, 
            ), 

            SizedBox(height: 30), 
            buildResetPwdFormField(label: 'Code', hint: 'Enter the code sent',
             validator: (value) {
                  if (value.isEmpty) {
                    setState(() {
                      errors.add('Incorrect Code');
                    });
                  }
                  return null; 
                },  onSaved: (value) => resetcode = value, 
            ), 
          ],
        ),
      ),
    );
  }
}