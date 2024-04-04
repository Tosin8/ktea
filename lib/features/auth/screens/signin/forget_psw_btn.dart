import 'package:flutter/material.dart';

class fgtPassword extends StatelessWidget {
  const fgtPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        
      },
      child: Text('Forgot Password? ',
       style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),),
    );
  }
}

