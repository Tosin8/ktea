import 'package:flutter/material.dart';
import 'package:furniture_app/splash_screen/splash.dart';

import 'components/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Splash_Screen.routeName,
      routes: routes,
      // home: const Splash_Screen(),
    );
  }
}
