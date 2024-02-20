// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'dining_body_widget.dart';



// class DiningScreen extends StatefulWidget {
//   const DiningScreen({super.key});

//   @override
//   State<DiningScreen> createState() => _DiningScreenState();
// }

// class _DiningScreenState extends State<DiningScreen> {

//   final List<String> _listItem = [
//     'assets/products/dining/1.jpg', 
//     'assets/products/dining/2.jpg', 
//   ]; 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           header(),
//           SizedBox(height: 5), 
//          GridView.count(crossAxisCount: 2, 
//          padding: const EdgeInsets.all(20), 
//          crossAxisSpacing: 20, 
//          mainAxisSpacing: 20, 
//          children: _listItem.map((item) => Card(
//           child: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(item), fit: BoxFit.cover
                
//               ),
//             ),
//           ),
//          )).toList()),
//         ],
//       )
//     );
//   }
// }