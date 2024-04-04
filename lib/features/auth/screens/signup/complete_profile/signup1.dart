import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'body1.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text('Sign Up', style: TextStyle(color: Colors.grey[800], fontSize: 20),),
centerTitle: true,        automaticallyImplyLeading: false, 
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          Text('2/3'), 
          SizedBox(width: 20,)
        ],
      ),
      body: CompleteProfileBody(),
    );
  }
}