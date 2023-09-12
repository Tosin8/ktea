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
