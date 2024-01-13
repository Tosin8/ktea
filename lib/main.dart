import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/screens/form/signin/signin.dart';

import 'firebase_options.dart';
import 'splash_screen/splash.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
  );
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
