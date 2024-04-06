import 'package:flutter/material.dart';

class OptionResetBtn extends StatelessWidget {
  const OptionResetBtn({
    super.key, 
    required this.btnIcon,
     required this.title, 
     required this.subTitle, 
     required this.onTap,
  });


final IconData btnIcon; 
final String title, subTitle; 
final VoidCallback onTap; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0), 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), 
        color: Colors.grey.shade200),
        child: Row(
          children: [
             Icon(btnIcon, color: Colors.black,size: 30,),
            const SizedBox(width: 20,), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 16),),
                Text(subTitle, style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),),
              ],
            )
          ],
        ),
      ),
    );
  }
}

