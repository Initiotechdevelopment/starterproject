import 'package:starterproject/controllers/home/HomeController.dart';
import 'package:starterproject/providers/CategoryProvider.dart';
import 'package:starterproject/providers/OfferProvider.dart';
import 'package:starterproject/providers/ProductProvider.dart';
import 'package:starterproject/repositories/CategoryRepository.dart';
import 'package:starterproject/repositories/OfferRepository.dart';
import 'package:starterproject/repositories/ProductRepository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferRepository>(() => OfferRepository(Get.find()));
    Get.lazyPut<OfferProvider>(() => OfferProvider(Get.find()));

    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
    Get.lazyPut<CategoryProvider>(() => CategoryProvider(Get.find()));
    
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
