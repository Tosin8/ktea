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
        child: ListView(children: [
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
            title: 'Home Decorations',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard1(),
                SizedBox(width: 45),
                ItemCard2(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          SizedBox(height: 18),
          const ProductHeader_Title(
            title: 'Sofa',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard5(),
                SizedBox(width: 45),
                ItemCard6(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          SizedBox(height: 18),
          const ProductHeader_Title(
            title: 'Table',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard1(),
                SizedBox(width: 45),
                ItemCard2(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          SizedBox(height: 18),
          const ProductHeader_Title(
            title: 'Cabinet',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard1(),
                SizedBox(width: 45),
                ItemCard2(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          SizedBox(height: 18),
          const ProductHeader_Title(
            title: 'Light',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard1(),
                SizedBox(width: 45),
                ItemCard2(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          SizedBox(height: 20),
        ]),
      ),
    ));
  }
}

class ItemCard1 extends StatelessWidget {
  const ItemCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                products[0].image,
              )),
          const SizedBox(height: 8),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                products[0].title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '\$${products[0].price}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types

class ItemCard2 extends StatelessWidget {
  const ItemCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                products[1].image,
              )),
          const SizedBox(height: 8),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                products[1].title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '\$${products[1].price}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard3 extends StatelessWidget {
  const ItemCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                products[2].image,
              )),
          const SizedBox(height: 8),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                products[2].title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '\$${products[2].price}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard4 extends StatelessWidget {
  const ItemCard4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                products[3].image,
              )),
          const SizedBox(height: 8),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                products[3].title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '\$${products[3].price}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard5 extends StatelessWidget {
  const ItemCard5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                products[4].image,
              )),
          const SizedBox(height: 8),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                products[4].title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '\$${products[4].price}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard6 extends StatelessWidget {
  const ItemCard6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                products[5].image,
              )),
          const SizedBox(height: 8),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                products[5].title,
                style: const TextStyle(fontWeight: FontWeight.w500),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '\$${products[5].price}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
