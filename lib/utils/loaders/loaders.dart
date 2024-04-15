import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class Loaders {
static warningSnackBar({required title, message = ''}) {

Get.snackbar(
  title, 
  message, 
  isDismissible: true, 
  shouldIconPulse: true, 
  colorText: Colors.white, 
  backgroundColor: Colors.orange, 
  snackPosition: SnackPosition.BOTTOM, 
  duration: const Duration(seconds: 3), 
  margin: const EdgeInsets.all(20),
   icon: const Icon(Iconsax.warning_2, color: Colors.white,),
  );
}

succesSnackBar({required title, message = ''}) {

Get.snackbar(
  title, 
  message, 
  isDismissible: true, 
  shouldIconPulse: true, 
  colorText: Colors.white, 
  backgroundColor: Colors.blue, 
  snackPosition: SnackPosition.BOTTOM, 
  duration: const Duration(seconds: 3), 
  margin: const EdgeInsets.all(10),
   icon: const Icon(Iconsax.check, color: Colors.white,),
  );
}

static errorSnackBar({required title, message = ''}) {
  Get.snackbar(
    title,
     message, 
     isDismissible: true, 
     shouldIconPulse: true, 
     colorText: Colors.white, 
     backgroundColor: Colors.red.shade600, 
     snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 3), 
      margin: const EdgeInsets.all(20), 
      icon: Icon(Iconsax.warning_2, color: Colors.white)
     );
}
}