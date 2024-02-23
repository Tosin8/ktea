// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sofa {
  String imgUrl; 
  String title; 
  String price; 
  Sofa({
    required this.imgUrl,
    required this.title,
    required this.price,
  });
}


List <Sofa> sofa = [
  Sofa(
    imgUrl: 'assets/products/sofa/1_150.jpg',
    title: 'Sofa',
    price: '2000',
  ), 
  Sofa(
    imgUrl: 'assets/products/sofa/2_150.jpg',
    title: 'Sofa',
    price: '2000',
  ), 

]; 