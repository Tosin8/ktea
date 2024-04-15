import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animation_loader.dart';

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
              AnimationLoaderWidget(text: text, animation: animation,),
            ],
          ),
        ))
    );
  }


// Stop the currently open loading dialog
// this method doesn't return anything. 
static stopLoading(){
  Navigator.of(Get.overlayContext!).pop(); // close the dialog using the navigator. 
}
}