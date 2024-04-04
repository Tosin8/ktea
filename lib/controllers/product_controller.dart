import 'package:get/get.dart';
import 'package:ktea/constants/firebase.dart';

import '../features/personalization/models/product_model/product.dart';

class ProductsController extends GetxController{
  static ProductsController instance = Get.find(); 
  RxList<ProductModel> products = RxList<ProductModel>([]); 
  String collection = 'products'; 

  @override 
  void onReady() {
    
    super.onReady();
    products.bindStream(getAllProducts());
  }
Stream<List<ProductModel>> getAllProducts() => 
  firebaseFirestore.collection(collection).snapshots().map((query) => 
  query.docs.map((item) => ProductModel.fromMap(item.data()) as ProductModel).toList());

}