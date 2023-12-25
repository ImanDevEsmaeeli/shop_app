import 'package:get/get.dart';
import 'package:shop_app/stateManagement/controllers/product_controller.dart';

class ShopAppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
