import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ktea/features/auth/screens/success_screen.dart';
import 'package:lottie/lottie.dart';

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
  child: Lottie.asset('assets/animation/json/mail_sent.json'),
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

   const SizedBox(height: 40,), 

          // const SignUpBtn(), 
           GestureDetector( 
      onTap: () {
       Get.to(() => const SuccessScreen());
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

    const SizedBox(height: 20,),
    
    // Resend Mail Btn
    TextButton(onPressed: (){}, 
    child: Text('Resend Email', style: TextStyle(color: Colors.orange.withOpacity(0.8)),)), 
  
        ],
      ),
    );
  }
}