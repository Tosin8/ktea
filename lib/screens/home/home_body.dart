import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/components/app_widgets.dart';
import 'package:ktea/screens/extended_screen/notification.dart';


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
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(
            color: Colors.blueAccent), // for changing default color.
        elevation: 0,
        shadowColor: Colors.black,
        actions: [
          GestureDetector(
              onTap: () {
                Get.to(Notifications()); 
              },
              child: Icon(Icons.notifications, color: Colors.black,) 
              ),
          const SizedBox(width: 10),
        
        ],
      ),
     
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(children: [
          Text(
            ' Unique Style \n Home Product',
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
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

          // home decoration.
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
                  ItemCard7(),
                  SizedBox(width: 45),
                  ItemCard8(),
                ],
              ),
            ]),
          ),
          SizedBox(height: 18),

          // table.
          const ProductHeader_Title(
            title: 'Table',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard9(),
                SizedBox(width: 45),
                // ItemCard10(),
              ]),
              SizedBox(height: 15),
              //  Row(
              //     children: [
              //       ItemCard11(),
              //       SizedBox(width: 45),
              //       ItemCard12(),
              //     ],
              //   ),
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

          // Light Category
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
