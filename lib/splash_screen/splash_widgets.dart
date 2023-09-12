import 'package:flutter/material.dart';

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
    return const Padding(
      padding: EdgeInsets.only(left: 0, right: 150),
      child: Column(
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
  }
}

class Sub_Text extends StatelessWidget {
  const Sub_Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 0, right: 120),
      child: Text(
        'The best simple place where you \n discover most outstanding furniture \n and make your home beautiful.',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
