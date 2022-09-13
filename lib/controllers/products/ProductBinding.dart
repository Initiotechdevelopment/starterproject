import 'package:starterproject/controllers/products/ProductController.dart';
import 'package:starterproject/providers/ProductProvider.dart';
import 'package:starterproject/repositories/ProductRepository.dart';
import 'package:get/get.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {  
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    
    Get.lazyPut<ProductController>(() => ProductController(Get.find()));
  }
}
