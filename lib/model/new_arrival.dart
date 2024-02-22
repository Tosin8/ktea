// ignore_for_file: public_member_api_docs, sort_constructors_first
class New {
  String imageUrl; 
  String title; 
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
        Price: 2500, imageUrl: ''),
       New(
      title:"iPhone 13 Pro Max", 
      Category:"Cabinet",  
      Price: 3000, imageUrl: ''),   
       New(
      title:"iPhone 13 Pro Max",
       Category:"Smartphones",
         Price: 3000, imageUrl: ''),
          New(
      title:"iPhone 13 Pro Max",
       Category:"Smartphones",
         Price: 3000, imageUrl: ''),
  ];
}


