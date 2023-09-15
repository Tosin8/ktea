import 'package:flutter/material.dart';

import '../../components/routes.dart';
import 'dart:async';

// ignore: camel_case_types
class App_Drawer extends StatelessWidget {
  const App_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // backgroundColor: kPrimaryColor,
        elevation: 20,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/drawer/1.jpg'),
                      fit: BoxFit.cover)),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [App_Icon_White(), Model_User(), User_Details()],
              ),
            ),
            SizedBox(height: 12),
            const Screen_Nav(),
            const SizedBox(height: 170),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/copyright_20.png'),
                const Text('2023,Paradise Home Ltd')
              ],
            ),
          ],
        ));
  }
}

class User_Details extends StatelessWidget {
  const User_Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 115,
      left: 70,
      child: Row(
        children: [
          const Column(
            children: [
              Text(
                'Abigael Landi',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              ),
              Text('abig@gmail.com',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500))
            ],
          ),
          const SizedBox(width: 30),
          Row(
            children: [
              Image.asset('assets/icons/location_10.png'),
              const Text(
                'Lagos, Nigeria',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Model_User extends StatelessWidget {
  const Model_User({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 102,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/drawer/model.jpg'),
      ),
    );
  }
}

class App_Icon_White extends StatelessWidget {
  const App_Icon_White({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/icons/app_icon_white_25.png'),
            const Text(
              'PARADISE',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0),
            ),
            const Text(
              'HOME',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 3.90),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types

List<String> assets = [
  'assets/images/carousel/1.jpg',
  'assets/images/carousel/2.jpg',
  'assets/images/carousel/3.jpg',
  'assets/images/carousel/4.jpg',
];

var subText =
    const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500);

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({
    super.key,
  });

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
// creating autoplay timer and creating variables for pagecontroller.
  int myfirstcurrentIndex = 0;

  PageController myfirstpagecontroller =
      PageController(initialPage: 0, viewportFraction: 0.9);
  bool isreverse = false;

  myfirstFunction() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (myfirstcurrentIndex == 4) {
        isreverse = true;
      } else if (myfirstcurrentIndex == 0) {
        isreverse = false;
      }
      isreverse ? myfirstcurrentIndex-- : myfirstcurrentIndex++;
      myfirstpagecontroller.animateToPage(myfirstcurrentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfirstFunction();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myfirstpagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: PageView.builder(
          itemCount: assets.length,
          padEnds: false,
          pageSnapping: false,
          // reverse: true,
          physics: const BouncingScrollPhysics(),
          controller: myfirstpagecontroller,
          onPageChanged: (value) {
            myfirstcurrentIndex = value;
            setState(() {});
          },
          // controller: PageController(
          //   initialPage: 0,
          //   viewportFraction: 0.9,
          // ),
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
