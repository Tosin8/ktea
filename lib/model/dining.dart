// ignore_for_file: public_member_api_docs, sort_constructors_first
class Dining {
  String imgUrl; 
  String title; 
  String price; 
  Dining({
    required this.imgUrl,
    required this.title,
    required this.price,
  });
}


List <Dining> diningProducts = [
  Dining(
    imgUrl: 'assets/products/sofa/1_150.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
  Dining(
    imgUrl: 'assets/products/sofa/2_150.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
   Dining(
    imgUrl: 'assets/products/sofa/3_150.jpg',
    title: 'Sofa',
    price: '2000',
  ),  
  Dining(
    imgUrl: 'assets/products/sofa/4_150.jpg',
    title: 'Sofa',
    price: '2000',
  ), 

]; 