import 'package:get/get.dart';

class CartController extends GetxController{
  static CartController instance = Get.find(); 
  RxDouble totalCartPrice = 0.0.obs; 

  @override 
  void onReady() {
    super.onReady(); 
    ever(userController.userModel,
     changeCartTotalPrice); 
  }

  void addProductToCart(ProductModel product) {
    try {
      if (_isItemAlreadyAdded(product)) {
        Get.snackbar('Check your cart', '${product.name} is already added');
      } else {
        String itemId = Uuid().toString(); 
        userController.updateUserData
      }
    }
  }
}