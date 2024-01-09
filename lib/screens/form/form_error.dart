import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index]))
    );
  }

  Row formErrorText({required String error}) {
    return Row(
        children: [
          Container(
            width: 20, height: 20,
            child: Image.asset('assets/icons/error.png')), 
          SizedBox(width: 10,), 
          Text(error), 
        ],
      );
  }
}