import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding( padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          Icon(Icons.arrow_back_ios, color: Colors.white,), 
          SizedBox(width: 260), 
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search_outlined, color: Colors.white,), SizedBox(width: 3), 
                Icon(Icons.notifications, color: Colors.white,)
                ],
                ),
                )
        ]
      ),
    );
  }
}