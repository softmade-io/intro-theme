import 'package:flutter/material.dart';
import 'package:intro/screens/widgets/info_widget.dart';
import 'package:intro/screens/widgets/profile.dart';
import 'package:intro/screens/widgets/stylish_header.dart';
import 'package:intro/src/controller/data_controller.dart';
import 'package:intro/src/controller/home_controller.dart';

class DesktopScreen extends StatelessWidget {
  DesktopScreen({
    Key? key,
    required this.homeController,
    required this.dataController,
  }) : super(key: key);
  HomeController homeController;
  DataController dataController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Row(
        children: [
          Expanded(
            child: ProfileWidget(
              isSocial: true,
              user: dataController.user.value,
              portfolioConfig: dataController.pConfig.value,
              isMale: true,
            ),
            flex: 3,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const StylishHeader(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InfoWidget(homeController: homeController),
                  ),
                )
              ],
            ),
            flex: 8,
          )
        ],
      ),
    );
  }
}
