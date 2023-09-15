import 'package:flutter/material.dart';

import '../../components/app_widgets.dart';
import '../../components/product_class.dart';
import 'home_widget.dart';

class Home_Body extends StatefulWidget {
  const Home_Body({super.key});

  @override
  State<Home_Body> createState() => _Home_BodyState();
}

class _Home_BodyState extends State<Home_Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(
                color: Colors.blueAccent), // for changing default color.
            elevation: 0,
            shadowColor: Colors.black,
            actions: [
              GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/icons/notification_bell_23.png')),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset("assets/icons/camera_25.png"),
                    const SizedBox(width: 5),
                    Text(
                      'Scan',
                      style: subText,
                    ),
                    const SizedBox(width: 12),
                  ],
                ),
              )
            ],
          ),
          drawer: const App_Drawer(),
          body: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView(
              children: [
                Text(
                  ' Find modern \n furniture for you',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7)),
                ),
                const SizedBox(height: 10),
                const SearchBarWidget(),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset('assets/icons/hot_sale_20.png'),
                    Text(
                      'Hot Sale Collections',
                      style: subText,
                    ),
                    const SizedBox(width: 160),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: subText,
                      ),
                    ),
                  ],
                ),
                const CarouselSlider(),
                const SizedBox(height: 10),
                const ProductHeader_Title(
                  title: 'Table',
                ),
                const SizedBox(height: 10),
              ],
            ),
          )),
    );
  }
}

// ignore: camel_case_types
