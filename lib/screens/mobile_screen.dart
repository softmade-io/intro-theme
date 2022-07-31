import 'package:flutter/material.dart';
import 'package:intro/screens/widgets/info_widget.dart';
import 'package:intro/screens/widgets/profile.dart';
import 'package:intro/screens/widgets/stylish_header.dart';
import 'package:intro/src/controller/data_controller.dart';
import 'package:intro/src/controller/home_controller.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({
    Key? key,
    required this.homeController,
    required this.dataController,
  }) : super(key: key);
  HomeController homeController;
  DataController dataController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ProfileWidget(
            user: dataController.user.value,
            portfolioConfig: dataController.pConfig.value,
            isSocial: true,
            isMale: true,
          ),
          const SizedBox(
            height: 20,
          ),
          const StylishHeader(),
          InfoWidget(homeController: homeController)
        ],
      ),
    );
  }
}
