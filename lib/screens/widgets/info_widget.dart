import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro/src/controller/home_controller.dart';
import 'package:intro/utils/widget_manager.dart';

class InfoWidget extends StatelessWidget {
  InfoWidget({
    Key? key,
    required this.homeController,
  }) : super(key: key);
  HomeController homeController;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return homeController.currentValue.isNotEmpty
          ? WidgetManager.getWidget(key: homeController.currentValue.value)
          : const Center(
              child: Text('Invalid widget'),
            );
    });
  }
}
