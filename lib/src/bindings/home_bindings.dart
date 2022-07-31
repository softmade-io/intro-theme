import 'package:get/get.dart';
import 'package:intro/src/controller/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
  }
}
