// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AnimationLoaderWidget extends StatelessWidget {
  const AnimationLoaderWidget({
    Key? key,
    required this.text,
    required this.animation,
    required this.showAction,
    this.actionText,
    this.onActionPressed,
  }) : super(key: key);


final String text; 
final String animation; 
final bool showAction; 
final String? actionText; 
final VoidCallback? onActionPressed; 
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
