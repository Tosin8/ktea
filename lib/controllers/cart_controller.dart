import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:uuid/uuid.dart'; 

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
        userController.updateUserData({
          'cart': FieldValue.arrayUnion([
            {
              'id': itemId, 
              'productId': product.id, 
              'name': product.name, 
              'quantity' : 1, 
              'price': product.price, 
              'image': product.image, 
              'cost': product.price

            }
          ])
        }); 
        Get.snackbar('Item added', '${product.name} was added to your cart');
      }
    }
    catch (e) {
      Get.snackbar('Error', 'Cannot add this item'); 
      debugPrint(e.toString());
    }
  }

  void removeCartItem(CartItemModel cartItem) {
    try {
      userController.updateUserData({
        'cart': FieldValue.arrayRemove([cartItem.toJson()])
      }); 
    } catch (e) {
      Get.snackbar('Error', 'Cannot remove this item'); 
      debugPrint(e.message); 
    }
  }

  changeCartTotalPrice
}