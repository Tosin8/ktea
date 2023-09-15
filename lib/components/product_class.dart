import 'package:flutter/material.dart';

class Product_HomeDeco {
  final String image, title, description;
  final int price, id;

  Product_HomeDeco({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.id,
  });
}

List<Product_HomeDeco> products = [
  Product_HomeDeco(
    id: 1,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/products/home_decoration/1_150.jpg",
  ),
  Product_HomeDeco(
    id: 2,
    title: "Belt Bag",
    price: 234,
    description: dummyText,
    image: "assets/images/1.png",
  ),
  Product_HomeDeco(
    id: 3,
    title: "Hang Top",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_3.png",
  ),
  Product_HomeDeco(
    id: 4,
    title: "Old Fashion",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_4.png",
  ),
  Product_HomeDeco(
    id: 5,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_5.png",
  ),
  Product_HomeDeco(
    id: 6,
    title: "Office Code",
    price: 234,
    description: dummyText,
    image: "assets/images/bag_6.png",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
