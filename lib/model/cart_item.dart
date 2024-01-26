// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartItemModel {
  // ignore: constant_identifier_names
  static const ID = 'id'; 
   static const IMAGE = 'image';
    static const NAME = 'name'; 
    static const QUANTITY = 'quantity'; 
    static const COST = 'cost'; 
    static const PRICE = 'price';
     static const PRODUCT_ID = 'productId'; 


 late  String id;
  late String image;
  late String name;
  late int quantity;
  late double cost;
  late double price;
 late  String productId;
  CartItemModel({
    required this.id,
    required this.image,
    required this.name,
    required this.quantity,
    required this.cost,
    required this.price,
    required this.productId,
  });

//  static fromMap(Map<String, dynamic> data) {}
CartItemModel.fromMap(Map<String, dynamic> data) {
  id = data[ID]; 
    image = data[IMAGE];
    name = data[NAME];
    quantity = data[QUANTITY];
    cost = data[COST].toDouble();
    productId = data[PRODUCT_ID]; 
    price = data[PRICE].toDouble();  
}

Map toJson() => {
  ID: id,
  IMAGE: image,
  NAME: name,
  QUANTITY: quantity,
  COST: price * quantity, 
  PRICE: price,
}; 
}
