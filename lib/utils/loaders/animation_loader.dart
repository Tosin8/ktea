// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLoaderWidget extends StatelessWidget {

  // Parameters: 
  // text: text to display below the animation
  // animation: the path to the  lotie animation file
  // showaction: show the action button below the text
  // actionText: the text to be displayed on the action button
  // onActionPressed: callback function to be executed when the action button is pressed. 
  const AnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
     this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });


final String text; 
final String animation; 
final bool showAction; 
final String? actionText; 
final VoidCallback? onActionPressed; 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Lottie.asset(animation, 
width: MediaQuery.of(context).size.width * 0.8),
const SizedBox(height: 20,), 
Text(text, style: Theme.of(context).textTheme.bodyMedium, 
textAlign: TextAlign.center,), 
const SizedBox(height: 20,), 
showAction 
? SizedBox(
  width: 200, 
  child: OutlinedButton(
    onPressed: onActionPressed,
    style:    OutlinedButton.styleFrom(backgroundColor: Colors.black), 
    child: Text(
      actionText!, 
      style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
      )), 
  

   ) : const SizedBox(), 
        ],
      ),
    );
  }
}
