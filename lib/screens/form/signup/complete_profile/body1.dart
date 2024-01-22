import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'complete_profile_widget.dart';

class CompleteProfileBody extends StatefulWidget {
  const CompleteProfileBody({super.key});

  @override
  State<CompleteProfileBody> createState() => _CompleteProfileBodyState();
}

class _CompleteProfileBodyState extends State<CompleteProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      width: double.infinity,
      child: SingleChildScrollView(
        child: FadeInRight(child: Column(children: [
          Text('Complete Profile', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),), 
          const SizedBox(height: 6,), 
          Text('Complete your details or continue \nwith social media', textAlign: TextAlign.center,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),), 
          SizedBox(height: 50), 
          const AppForm2(), 
        ],)),
      ),
    );
  }
}