import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

warningSnackBar({required title, message = ''}) {

Get.snackbar(
  title, 
  message, 
  isDismissible: true, 
  shouldIconPulse: true, 
  colorText: Colors.white, 
  backgroundColor: Colors.orange, 
  snackPosition: SnackPosition.BOTTOM, 
  duration: Duration(seconds: 3), 
  margin: const EdgeInsets.all(20),
   icon: const Icon(Iconsax.warning_2, color: Colors.white,),
  );
}

warningSnackBar({required title, message = ''}) {

Get.snackbar(
  title, 
  message, 
  isDismissible: true, 
  shouldIconPulse: true, 
  colorText: Colors.white, 
  backgroundColor: Colors.orange, 
  snackPosition: SnackPosition.BOTTOM, 
  duration: Duration(seconds: 3), 
  margin: const EdgeInsets.all(20),
   icon: const Icon(Iconsax.warning_2, color: Colors.white,),
  );
}