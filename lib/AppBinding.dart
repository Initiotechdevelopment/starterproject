import 'package:get/instance_manager.dart';
import 'package:starterproject/services/networking/ApiService.dart';
import 'package:starterproject/services/networking/BaseProvider.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BaseProvider(), permanent: true);
    Get.put(ApiService(Get.find()), permanent: true);
  }
}
