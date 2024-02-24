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
    imgUrl: 'assets/products/table/1_150.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
  TableProduct(
    imgUrl: 'assets/products/table/2_150.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
   TableProduct(
    imgUrl: 'assets/products/table/3_150.jpg',
    title: 'Sofa',
    price: '2000',
  ),  
  TableProduct(
    imgUrl: 'assets/products/table/4_150.jpg',
    title: 'Sofa',
    price: '2000',
  ), 

]; 