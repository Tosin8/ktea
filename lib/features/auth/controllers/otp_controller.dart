import 'package:get/get.dart';
import 'package:ktea/repository/auth/auth_repository.dart';
import 'package:ktea/utils/nav_bar.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find(); 


  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const NavBarApp()) : Get.back(); 
  }
}