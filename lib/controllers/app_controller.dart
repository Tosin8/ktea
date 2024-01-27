import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController instance = Get.find(); 
  RxBool isLoginWidgetDisplayed = true.obs; 

  changeDisplayedAuthWidget() {
    isLoginWidgetDisplayed.value = !isLoginWidgetDisplayed.value; 
  }
}