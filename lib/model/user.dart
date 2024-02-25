// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'cart_item.dart';


// class UserModel {
//   static const ID = "id";
//   static const NAME = "name";
//   static const EMAIL = "email";
//   static const CART = "cart";

//    late String id;
//    late String name;
//    late String email;
//   late  List<CartItemModel> cart;

//   UserModel({required this.id, required this.name, required this.email, required this.cart});

//   UserModel.fromSnapshot(DocumentSnapshot snapshot) {
//     name = (snapshot.data() as Map<String, dynamic>)[NAME];
//     email = (snapshot.data() as Map<String, dynamic>)[EMAIL];
//     id = (snapshot.data() as Map<String, dynamic>)[ID];
//     cart = _convertCartItems((snapshot.data() as Map<String, dynamic>)[CART] ?? []);
//   }

//   List<CartItemModel> _convertCartItems(List cartFomDb){
//     List<CartItemModel> _result = [];
//     if(cartFomDb.length > 0){
//       cartFomDb.forEach((element) {
//       _result.add(CartItemModel.fromMap(element));
//     });
//     }
//     return _result;
//   }

//   List cartItemsToJson() => cart.map((item) => item.toJson()).toList();
// }
