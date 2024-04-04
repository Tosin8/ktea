import 'package:flutter/material.dart';

class signupheader extends StatelessWidget {
  const signupheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right:15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Create Account', 
          style: TextStyle(
            color: Colors.black.withOpacity(0.8), 
            fontSize: 24,
             fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6), 
    const Text('Complete your details or continue \nwith social media', 
    
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
        ],
      ),
    
    
    );
  }
}