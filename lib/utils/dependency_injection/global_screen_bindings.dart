import 'package:get/get.dart';
import 'package:plant_web_app/controllers/home_controller.dart';

class GlobalScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
