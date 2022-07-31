import 'package:flutter/material.dart';
import 'package:intro/screens/widgets/info_widget.dart';
import 'package:intro/screens/widgets/profile.dart';
import 'package:intro/screens/widgets/stylish_header.dart';
import 'package:intro/src/controller/data_controller.dart';
import 'package:intro/src/controller/home_controller.dart';

class TabScreen extends StatelessWidget {
  TabScreen({
    Key? key,
    required this.homeController,
    required this.dataController,
  }) : super(key: key);
  HomeController homeController;
  DataController dataController;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          child: ProfileWidget(
            user: dataController.user.value,
            portfolioConfig: dataController.pConfig.value,
            isMale: true,
            isSocial: true,
          ),
          flex: width > 1149 ? 4 : 5,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const StylishHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InfoWidget(homeController: homeController),
                ),
              )
            ],
          ),
          flex: width > 1149 ? 8 : 7,
        )
      ],
    );
  }
}
