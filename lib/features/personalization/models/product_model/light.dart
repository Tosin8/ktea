// ignore_for_file: public_member_api_docs, sort_constructors_first
class LightProduct {
  String imgUrl; 
  String title; 
  String price; 
  LightProduct({
    required this.imgUrl,
    required this.title,
    required this.price,
  });
}


List <LightProduct> LightProducts = [
  LightProduct(
    imgUrl: 'assets/products/light/1.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
  LightProduct(
    imgUrl: 'assets/products/light/2.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
   LightProduct(
    imgUrl: 'assets/products/light/3.jpg',
    title: 'Sofa',
    price: '2000',
  ),  
  

]; 