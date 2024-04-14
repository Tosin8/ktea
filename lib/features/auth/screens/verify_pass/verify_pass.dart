import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
            Get.back();
            },
            icon: const Icon(Iconsax.close_circle))
        ],
      ),
      body: Column(
        children: [

// Image
Container(
  height: 250, 
  width: MediaQuery.of(context).size.width,
  child: const Placeholder(),
),
const SizedBox(height: 20,), 

const Text('Verify your email address', 
style: TextStyle(
  fontWeight: FontWeight.w500,
   fontSize: 20),), 
const SizedBox(height: 10,), 
   //  sender email
   Text('tosinezekiel8@gmail.com', 
   style: TextStyle(color: Colors.black.withOpacity(0.4))),
const SizedBox(height: 10,), 
   // Congratualary News
   const Text('Congratulations!, Your Account Awaits. Kindly Verify \n Your Email to Start Your Shopping Experience',
  textAlign: TextAlign.center,
   ),  

   SizedBox(height: 40,), 

          // const SignUpBtn(), 
           GestureDetector( 
      onTap: () {
      // Get.to(() => const VerifyEmail());
      }, 
      child: Container(
        width: 350, 
        height: 50,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), 
      color: Colors.orange), 
      child: const Align(
        child: Text(
        'CONTINUE', 
        style: TextStyle(
          color: Colors.white, 
          fontSize: 16, 
          fontWeight: FontWeight.w500)
          ),
          ),
          ),
    ), 

    SizedBox(height: 20,), 
  
        ],
      ),
    );
  }
}