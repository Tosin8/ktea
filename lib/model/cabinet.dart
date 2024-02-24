// ignore_for_file: public_member_api_docs, sort_constructors_first
class CabinetProduct {
  String imgUrl; 
  String title; 
  String price; 
  CabinetProduct({
    required this.imgUrl,
    required this.title,
    required this.price,
  });
}


List <CabinetProduct> CabinetProducts = [
  CabinetProduct(
    imgUrl: 'assets/products/light/1.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
  CabinetProduct(
    imgUrl: 'assets/products/light/2.jpg',
    title: 'Brown Chair',
    price: '2000',
  ), 
   CabinetProduct(
    imgUrl: 'assets/products/light/3.jpg',
    title: 'Sofa',
    price: '2000',
  ),  
  

]; 