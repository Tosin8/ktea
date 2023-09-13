import 'package:flutter/material.dart';

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
                    const Text(
                      'Scan',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 12),
                  ],
                ),
              )
            ],
          ),
          drawer: const App_Drawer(),
          body: ListView(
            children: [CarouselSlider()],
          )),
    );
  }
}

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: PageView.builder(
          itemCount: assets.length,
          padEnds: false,
          controller: PageController(
            initialPage: 0,
            viewportFraction: 0.9,
          ),
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.all(8),
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Image.asset(assets[index], fit: BoxFit.cover));
          }),
    );
  }
}
