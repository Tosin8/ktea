import 'package:flutter/material.dart';
import 'package:get/get.dart';

class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding( padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          GestureDetector(
            onTap: () {
              Get.back(); 
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.white,)), 
          const SizedBox(width: 260), 
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search_outlined, color: Colors.white,),
                 
                Icon(Icons.notifications, color: Colors.white,)
                ],
                ),
                )
        ]
      ),
    );
  }
}