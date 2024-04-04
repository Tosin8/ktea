import 'package:flutter/material.dart';

class Profile_Pic extends StatelessWidget {
  const Profile_Pic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/drawer/model.jpg'),
            ),
            Positioned(
              right: -10,
              bottom: 0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 0.3,
                        )
                      ],
                    ),
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/icons/camera_15.png')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
