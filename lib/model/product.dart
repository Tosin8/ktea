// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  static const ID = 'id'; 
  static const IMAGE = 'image'; 
  static const NAME = 'name'; 
  static const PRICE = 'price'; 

  String id;
  String image; 
  String name; 
  double price;
  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
  });

  static fromMap(Map<String, dynamic> data) {}
}

// ProductModel.fromMap(Map<String, dynamic> data ) {
//   id = data[ID]; 
//   image = data[IMAGE]; 
//   name = data[NAME]; 
//   price = data[PRICE].toDouble(); 
// }