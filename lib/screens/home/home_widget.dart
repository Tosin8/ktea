import 'package:flutter/material.dart';
import 'package:furniture_app/components/constants.dart';

// ignore: camel_case_types
class App_Drawer extends StatelessWidget {
  const App_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: kPrimaryColor,
        elevation: 20,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/drawer/1.jpg'),
                      fit: BoxFit.cover)),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Center(
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
                  ),
                  Positioned(
                    top: 102,
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/drawer/model.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            const Screen_Nav(),
            const SizedBox(height: 220),
            const Divider(),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/copyright_20.png'),
                const Text('2023, Product of Paradise Home Ltd')
              ],
            ),
          ],
        ));
  }
}

// ignore: camel_case_types
class Screen_Nav extends StatelessWidget {
  const Screen_Nav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('assets/icons/home.png'),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          splashColor: Colors.blueAccent,
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset('assets/icons/cart_20.png'),
          title: const Text('Cart'),
        ),
        ListTile(
          leading: Image.asset('assets/icons/save_20.png'),
          title: const Text('Saved Items'),
        ),
        ListTile(
          leading: Image.asset('assets/icons/user_20.png'),
          title: const Text('Profile'),
        ),
        ListTile(
          leading: Image.asset('assets/icons/chat_20.png'),
          title: const Text('Help'),
        ),
      ],
    );
  }
}

List<String> assets = [
  'assets/images/carousel/1.jpg',
  'assets/images/carousel/2.jpg',
  'assets/images/carousel/3.jpg',
  'assets/images/carousel/4.jpg',
];

var subText =
    const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500);
