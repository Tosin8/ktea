import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profile_widget.dart';

class Profile_Body extends StatefulWidget {
  const Profile_Body({super.key});

  @override
  State<Profile_Body> createState() => _Profile_BodyState();
}

class _Profile_BodyState extends State<Profile_Body> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [SizedBox(height: 30), Profile_Pic()],
    );
  }
}
