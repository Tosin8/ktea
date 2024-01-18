// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ktea/model/device.dart';

// class AppController extends GetxController {
//   static AppController instance = Get.find(); 
//   Rx<Widget> activeDraggableWidget = Rx<Widget>(DevicesDraggable()); 
//   Rx<DeviceModel> activeDevice = DeviceModel().obs; 
//   RxBool isLoginWidgetDisplayed = true.obs; 

//   changeDisplayAuthWidget() {
//     isLoginWidgetDisplayed.value = !isLoginWidgetDisplayed.value; 
//   }

//   changeActiveDeviceTo(DeviceModel device) {
//     activeDevice.value = device; 
//   }

//   changeActiveDraggableWidgetTo(Widget widget) {
//     activeDraggableWidget.value = widget; 
//   }
// }