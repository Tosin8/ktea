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
    return Column(
      children: [
        SizedBox(height: 30),
        Profile_Pic(),
        SizedBox(height: 40),
        Profile_Menu(
          text: 'My Account',
          icon_prefix: 'assets/icons/user_20.png',
          press: () {},
        ),
        Profile_Menu(
          text: 'Notifications',
          icon_prefix: 'assets/icons/notification_20.png',
          press: () {},
        ),
        Profile_Menu(
          text: 'Settings',
          icon_prefix: 'assets/icons/settings_20.png',
          press: () {},
        ),
        Profile_Menu(
          text: 'Help Center',
          icon_prefix: 'assets/icons/help_20.png',
          press: () {},
        ),
        Profile_Menu(
          text: 'Log Out',
          icon_prefix: 'assets/icons/logout_20.png',
          press: () {},
        ),
      ],
    );
  }
}

class Profile_Menu extends StatelessWidget {
  const Profile_Menu({
    super.key,
    required this.text,
    required this.icon_prefix,
    required this.press,
  });

  final String text, icon_prefix;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xfff5f6f9)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(icon_prefix),
                const SizedBox(width: 20),
                Expanded(
                    child: Text(
                  text,
                )),
                const Icon(Icons.arrow_forward_ios),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
