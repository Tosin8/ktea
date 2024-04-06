import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/firebase_options.dart';
import 'package:ktea/repository/auth/auth_repository.dart';

import 'features/auth/screens/onboarding/splash.dart';



 main() {
  WidgetsFlutterBinding.ensureInitialized(); 
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
    
 
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
