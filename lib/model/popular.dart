// ignore_for_file: public_member_api_docs, sort_constructors_first
class Popular {
  String imageUrl;
  String title; 
  String category;
  double price;
  Popular({
    required this.imageUrl,
    required this.title,
    required this.category,
    required this.price,
  });
}

final List<Popular> popularProducts = [
  Popular(
    imageUrl: 'assets/popular/1.jpg',
    title: "Wooden Chair",
    category: "Cabinet  ",
    price: 2500,
  ),
  Popular(
    imageUrl: 'assets/popular/2.jpg',
    title: "Wooden Chair",
    category: "Light",
    price: 2500,
  ), 
   Popular(
    imageUrl: 'assets/popular/3.jpg',
    title: "Wooden Chair",
    category: "Furniture",
    price: 2500,
  ), 
  Popular(
    imageUrl: 'assets/popular/4.jpg',
    title: "Wooden Chair",
    category: "Furniture",
    price: 2500,
  ), 
  Popular(
    imageUrl: 'assets/popular/5.jpg',
    title: "Wooden Chair",
    category: "Furniture",
    price: 2500,
  ), 
];