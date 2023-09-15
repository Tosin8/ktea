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
              const Text(
                'HOME DECORATIONS',
                style: TextStyle(
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

class Sofa extends StatelessWidget {
  const Sofa({
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
            child: Image.asset('assets/category_menu/sofa_bkg.jpg')),
        Positioned(
          top: 65,
          left: 60,
          child: Column(
            children: [
              const Text(
                'SOFA',
                style: TextStyle(
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
        Positioned(
            top: -20,
            right: 20,
            child: Image.asset('assets/category_menu/sofa_200.png')),
      ],
    );
  }
}

class TableP extends StatelessWidget {
  const TableP({
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
            child: Image.asset('assets/category_menu/table_bkg.jpg')),
        Positioned(
          top: 65,
          left: 60,
          child: Column(
            children: [
              const Text(
                'TABLE',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 80,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: -80,
            right: -48,
            child: Image.asset('assets/category_menu/table_350.png')),
      ],
    );
  }
}

class Cabinet extends StatelessWidget {
  const Cabinet({
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
            child: Image.asset('assets/category_menu/cabinet_bkg.jpg')),
        Positioned(
            top: -90,
            left: -50,
            child: Image.asset('assets/category_menu/cabinet_350.png')),
        Positioned(
          top: 60,
          right: 70,
          child: Column(
            children: [
              const Text(
                'CABINET',
                style: TextStyle(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Light extends StatelessWidget {
  const Light({
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
            child: Image.asset('assets/category_menu/light_bkg.jpg')),
        Positioned(
          top: 65,
          left: 60,
          child: Column(
            children: [
              const Text(
                'LIGHT',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 80,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 0,
            right: 20,
            child: Image.asset('assets/category_menu/light_180.png')),
      ],
    );
  }
}
