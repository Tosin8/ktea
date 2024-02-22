// ignore_for_file: public_member_api_docs, sort_constructors_first
class New {
  String imageUrl; 
  String title; 
  // ignore: non_constant_identifier_names
  String Category; 
  double Price; 
  New({
    required this.title,
    required this.Category,
    required this.Price,
    required this.imageUrl
  });

  List <New> news = [
    New(
      title:"4 Set Wooden Dining",
       Category:"Furniture", 
        Price: 2500, 
        imageUrl: 'assets/new_arrival/1.jpg'),
       New(
      title:"iPhone 13 Pro Max", 
      Category:"Cabinet",  
      Price: 3000, 
      imageUrl: 'assets/new_arrival/2.jpg'),   
       New(
      title:"iPhone 13 Pro Max",
       Category:"Smartphones",
         Price: 3000, 
         imageUrl: 'assets/new_arrival/3.jpg'),
          New(
      title:"iPhone 13 Pro Max",
       Category:"Smartphones",
         Price: 3000,
          imageUrl: 'assets/new_arrival/4.jpg'),
  ];
}


