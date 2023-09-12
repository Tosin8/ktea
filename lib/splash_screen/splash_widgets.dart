import 'package:flutter/material.dart';

import '../screens/home/home.dart';

var bkgImage = Container(
  decoration: BoxDecoration(
    image: DecorationImage(
        image: const AssetImage(
          'assets/images/splash/1.jpg',
        ),
        colorFilter:
            ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.modulate),
        fit: BoxFit.cover),
  ),
);

class App_Icon extends StatelessWidget {
  const App_Icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/icons/app_icon_black_25.png',
          ),
          const Text(
            'PARADISE',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.0,
            ),
          ),
          const Text(
            'HOME',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 3.90),
          ),
        ],
      ),
    );
  }
}

class Header_Text extends StatelessWidget {
  const Header_Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 150),
      child: TweenAnimationBuilder(
          duration: const Duration(seconds: 2),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (_, double opacity, __) {
            return AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 62),
                    child: Text(
                      'MAKE YOUR',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    'HOME BEAUTIFUL',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class Sub_Text extends StatefulWidget {
  const Sub_Text({
    super.key,
  });

  @override
  State<Sub_Text> createState() => _Sub_TextState();
}

class _Sub_TextState extends State<Sub_Text> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 120),
      child: TweenAnimationBuilder(
          duration: const Duration(seconds: 2),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (_, double opacity, __) {
            return AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 2),
              curve: Curves.easeIn,
              child: const Text(
                'The best simple place where you \n discover most outstanding furniture \n and make your home beautiful.',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            );
          }),
    );
  }
}

class Splash_Button extends StatelessWidget {
  const Splash_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Home.routeName);
      },
      child: Container(
          width: 167,
          height: 55,
          decoration: const BoxDecoration(color: Colors.black),
          child: const Center(
            child: Text(
              'Start Shopping',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          )),
    );
  }
}
