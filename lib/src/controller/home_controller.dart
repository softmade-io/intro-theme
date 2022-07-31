import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intro/src/controller/api_controller.dart';
import 'package:intro/src/models/header_option.dart';
import 'package:intro/utils/widget_manager.dart';

class HomeController extends GetxController {
  List<HeaderOption> category = WidgetManager.widgets;

  RxString currentValue = 'Education'.obs;
  late ApiController _apiController;
  RxBool isLoading = false.obs;

  HomeController() {
    _apiController = Get.find<ApiController>();
  }

  changeIndex({required String value, required Widget widget}) {
    currentValue.value = value;
  }

  loadPortfolio() async {
    _apiController.loadPortfolio();
  }

  Future getProjects() async {
    try {
      isLoading.value = true;
      await _apiController.getProjects();
      isLoading.value = false;
    } on HttpException catch (e) {
      isLoading.value = false;
      throw HttpException(e.message);
    } catch (e) {
      isLoading.value = false;
      rethrow;
    }
  }

  Future getEducations() async {
    try {
      isLoading.value = true;
      await _apiController.getEducations();
      isLoading.value = false;
    } on HttpException catch (e) {
      isLoading.value = false;
      throw HttpException(e.message);
    } catch (e) {
      isLoading.value = false;
      rethrow;
    }
  }

  Future getCertifications() async {
    try {
      isLoading.value = true;
      await _apiController.getCertifications();
      isLoading.value = false;
    } on HttpException catch (e) {
      isLoading.value = false;
      throw HttpException(e.message);
    } catch (e) {
      isLoading.value = false;
      rethrow;
    }
  }
}
