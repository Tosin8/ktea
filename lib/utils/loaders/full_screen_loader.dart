import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, 
      barrierDismissible: false, 
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          width: double.infinity, 
          height: double.infinity, 
          child: Column(
            children: [
              const SizedBox(height: 250,), 
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ))
    );
  }
}