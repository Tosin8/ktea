import 'package:flutter/material.dart';

Row buildTimer() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('This code will expire in '),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0), 
             duration: const Duration(seconds: 30), 
             builder: (context, value, child ) => Text('00:${value.toInt()}', 
             style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
             ), 
             onEnd: () {
               
             },)
        ],
      );
}