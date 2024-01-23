import 'package:flutter/material.dart';

import 'dining_body_widget.dart';

class DiningScreen extends StatefulWidget {
  const DiningScreen({super.key});

  @override
  State<DiningScreen> createState() => _DiningScreenState();
}

// class _DiningScreenState extends State<DiningScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: const [
//           // Hero(
//           //   tag: 'dining',
//           //   child: 
//           header(),
//           SizedBox(height: 5), 

//          DiningCategoryTab() ,
//     ] ) 
     
//     );
//   }
// }

class _DiningScreenState extends State<DiningScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4 ,
      child: Scaffold(
        body: NestedScrollView(headerSliverBuilder: (), body: body))


