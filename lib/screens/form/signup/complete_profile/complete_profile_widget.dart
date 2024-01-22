import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/screens/form/otp/otp.dart';
import 'package:ktea/screens/form/widget.dart';

class AppForm2 extends StatefulWidget {
  const AppForm2({super.key});

  @override
  State<AppForm2> createState() => _AppForm2State();
}

class _AppForm2State extends State<AppForm2> {
  final formKey = GlobalKey<FormState>(); 

  final List<String> errors = []; 

  late String firstName; 
  late String lastName; 
  late String phoneNumber; 
  late String address; 
  @override
  Widget build(BuildContext context) {
    return  Form( 
      child: Padding(padding: EdgeInsets.only(left: 15, right: 15), 
      child: Column(
        children: [
          buildUserFirstFormField(label: 'First Name',
           hint: 'Enter your first name', 
           validator: (value){
            if(value.isEmpty) {
              setState(() {
                errors.add('First name can\'t be empty');
              });
            }
            return null; 
           }, 
           onSaved: (value) => firstName = value, ), 
           const SizedBox(height: 30), 
           buildUserLastFormField(label: 'Last Name', hint: 'Enter your last name', validator: (value) => value.isEmpty ? "Last Name can\t' be empty" : null, onSaved: (value) => lastName = value), 
           SizedBox(height:30), 
           buildUserPhoneFormField(label: 'Phone Number',
            hint: 'Enter your phone number',
             validator: (value) => value.isEmpty ? "Phone number not valid" : null, 
             
              onSaved: (value) => lastName = value), 
              SizedBox(height: 30), 
              buildUserAddressFormField(label: 
              
              'Delivery Address', hint: 'Tend to include notable landmark', validator: (value) => value.isEmpty ? 'Address Landmark not found': null, 
              onSaved: (value) => phoneNumber = value), 
              SizedBox(height: 20), 
              DefaultButton(textBtn: 'Continue', 
              press: (){
                Get.to(OTP()); 
              })

        ],
      ),),
    );
  }
}