import 'package:flutter/material.dart';

class HomeDecoration extends StatelessWidget {
  const HomeDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.none,
      children: [
        Container(
            clipBehavior: Clip.antiAlias,
            height: 190,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset('assets/category_menu/home_deco_bkg.jpg')),
        Positioned(
            top: -50,
            right: 180,
            child: Image.asset('assets/category_menu/home_deco_250.png')),
        Positioned(
          top: 65,
          left: 170,
          child: Column(
            children: [
              Text(
                'HOME DECORATIONS',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 80,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
