import 'package:flutter/material.dart';

class Category_Body extends StatefulWidget {
  const Category_Body({super.key});

  @override
  State<Category_Body> createState() => _Category_BodyState();
}

class _Category_BodyState extends State<Category_Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView(
        children: [
          Category_Menu(
            bkgImage: 'assets/category_menu/home_deco_bkg.jpg',
            productImg: 'assets/product_menu/home_deco_250.png',
            titleText: 'HOME DECORATION',
            press: () {},
          )
        ],
      ),
    );
  }
}

class Category_Menu extends StatelessWidget {
  const Category_Menu({
    super.key,
    required this.bkgImage,
    required this.productImg,
    required this.titleText,
    required this.press,
  });

  final String bkgImage, productImg;
  final String titleText;
  final VoidCallback press;
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
            child: Image.asset(bkgImage)),
        Positioned(top: -60, right: 180, child: Image.asset(productImg)),
        Positioned(
          top: 65,
          left: 170,
          child: Column(
            children: [
              Text(
                titleText,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: press,
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
