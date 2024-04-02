import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import 'splash_screen/splash.dart';



 main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform, 
  // );

  // await initialization.then((value) => 
  // Get.put(AppController())); 
  // //Get.put(UserController()); 
  // Get.put(ProductsController()); 
  // // Get.put(CartController()); 
  // // Get.put(PaymentsController()); 
    
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute: FurnitureSplash.routeName,
      // routes: routes,
     home: const Onboarding(), 

     //home: SignIn(), 
    );
  }
}
