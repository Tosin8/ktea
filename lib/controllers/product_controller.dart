import 'package:get/get.dart';
import 'package:ktea/constants/firebase.dart';

import '../model/product.dart';

class ProductsController extends GetxController{
  static ProductsController instance = Get.find(); 
  RxList<ProductModel> products = RxList<ProductModel>([]); 
  String collection = 'products_dining'; 

  @override 
  void onReady() {
    
    super.onReady();
    products_dining.bindStream(getAllProducts());
  }

  Stream<List<ProductModel>> getAllProducts() => 
  firebaseFirestore.collection(collection).snapshots().map((query) => 
  query.docs.map((item) => ProductModel.fromMap(item.data()))
  .toList()); 
}