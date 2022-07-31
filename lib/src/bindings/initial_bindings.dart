import 'dart:html';
import 'package:get/get.dart';
import 'package:intro/src/controller/api_controller.dart';
import 'package:intro/src/controller/data_controller.dart';

class Init extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DataController());
    Get.put(ApiController());
  }
}
