// import 'package:flutter/material.dart';

// import '../constants/controllers.dart';
// import '../model/cart_item.dart';
// import 'custom_text.dart';

// class CartItemWidget extends StatelessWidget {
//   final CartItemModel cartItem;

//   const CartItemWidget({required Key key, required this.cartItem}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment:
//       MainAxisAlignment.center,
//       children: [
//         Padding(
//           padding:
//           const EdgeInsets.all(8.0),
//           child: Image.network(
//             cartItem.image,
//             width: 80,
//           ),
//         ),
//         Expanded(
//             child: Wrap(
//               direction: Axis.vertical,
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 14),
//                     child: CustomText(
//                       text: cartItem.name,
//                     )),
//                 Row(
//                   mainAxisAlignment:
//                   MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                         icon: Icon(
//                             Icons.chevron_left),
//                         onPressed: () {
//                           cartController.decreaseQuantity(cartItem);
//                         }),
//                     Padding(
//                       padding:
//                       const EdgeInsets.all(
//                           8.0),
//                       child: CustomText(
//                         text: cartItem.quantity.toString(),
//                       ),
//                     ),
//                     IconButton(
//                         icon: Icon(Icons
//                             .chevron_right),
//                         onPressed: () {
//                           cartController.increaseQuantity(cartItem);
//                         }),
//                   ],
//                 )
//               ],
//             )),
//         Padding(
//           padding:
//           const EdgeInsets.all(14),
//           child: CustomText(
//             text: "\$${cartItem.cost}",
//             size: 22,
//             weight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
// }