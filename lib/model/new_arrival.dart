// ignore_for_file: public_member_api_docs, sort_constructors_first
class New {
  String imageUrl; 
  String title; 
  // ignore: non_constant_identifier_names
  String category; 
  double price; 
  New({
    required this.title,
    required this.category,
    required this.price,
    required this.imageUrl
  });
}
  final List<New> newProducts = [
    New(
      title:"4 Set Wooden Dining",
       category:"Furniture", 
        price: 2500, 
        imageUrl: 'assets/new_arrival/1.jpg'),
       New(
      title:"iPhone 13 Pro Max", 
      category:"Cabinet",  
      price: 3000, 
      imageUrl: 'assets/new_arrival/2.jpg'),   
       New(
      title:"iPhone 13 Pro Max",
       category:"Smartphones",
         price: 3000, 
         imageUrl: 'assets/new_arrival/3.jpg'),
          New(
      title:"iPhone 13 Pro Max",
       category:"Smartphones",
         price: 3000,
          imageUrl: 'assets/new_arrival/4.jpg'),
  ];


