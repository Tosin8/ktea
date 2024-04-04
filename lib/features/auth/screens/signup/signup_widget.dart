import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/signup/complete_profile/signup1.dart';
import 'package:ktea/features/auth/screens/widget.dart';

class AppForm1 extends StatefulWidget {
  const AppForm1({super.key});

  @override
  State<AppForm1> createState() => _AppForm1State();
}

class _AppForm1State extends State<AppForm1> {
  final formKey = GlobalKey<FormState>();

  final List<String> errors = []; 
  late String _email; 
  late String _pwd; 

  //FormType _formType = FormType.signup; 

  bool validateAndSave() {
   final form = formKey.currentState; 
   if(form!.validate()) {
    form.save();
    return true; 
   } else {
    return false;
   }
  }

void validateAndSubmit() {
if (formKey.currentState!.validate()){
  formKey.currentState?.save(); 
}; 
}


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey, 
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15, right: 15), 
          child: Column(children: [
            buildEmailFormField(
              label: 'Email',
               hint: 'Enter your email', 
               validator: (value) {
                if (value.isEmpty) {
                  setState(() {
                    errors.add('Email can\'t be empty');
                  });
                }
                return null; 
               },
                onSaved: (value) => _email = value, ), 
                const SizedBox(height: 30),
                buildPwdFormField(label: 'Password',
                 hint: 'Enter your password',
                  validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null, 
                  onSaved: (value) => _pwd = value, ), 
                  const SizedBox(height: 30), 
                  buildPwdFormField(label: 'Confirm Password',
                 hint: 'Re-enter your password',
                  validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null, 
                  onSaved: (value) => _pwd = value, ), 
                  const SizedBox(height: 30), 
                   DefaultButton(textBtn: 'Continue', press: (){
                    Get.to(const CompleteProfile());
                   }
                   )
          ]),
          ),

    );
  }
}