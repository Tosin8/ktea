import 'package:flutter/material.dart';


import '../../components/app_widgets.dart';
import '../home/home_widget.dart';
import 'profile_body.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  static String routeName = "/Profile";
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const App_Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        title: Text('Profile', style: AppBar_Header),
        centerTitle: true,
      ),
      body: const Profile_Body(),
    );
  }
}
