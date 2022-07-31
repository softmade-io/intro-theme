import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/responsive.dart';
import 'package:intro/screens/desktop_screen.dart';
import 'package:intro/screens/mobile_screen.dart';
import 'package:intro/screens/tab_screen.dart';
import 'package:intro/src/controller/data_controller.dart';
import 'package:intro/src/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeController homeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = Get.find<HomeController>();
    homeController.loadPortfolio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: GetX<DataController>(
          builder: (dataConroller) {
            return dataConroller.mainLoading.isTrue
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : dataConroller.mainError.isTrue
                    ? Container(
                        alignment: Alignment.center,
                        child: Text(
                          dataConroller.errorMessage,
                          style: GoogleFonts.firaSans(
                            color: Colors.indigo.shade500,
                            fontSize: 30,
                          ),
                        ),
                      )
                    : Responsive.isMobile(context)
                        ? MobileScreen(
                            homeController: homeController,
                            dataController: dataConroller,
                          )
                        : Responsive.isTablet(context)
                            ? TabScreen(
                                homeController: homeController,
                                dataController: dataConroller,
                              )
                            : DesktopScreen(
                                homeController: homeController,
                                dataController: dataConroller,
                              );
          },
        ));
  }
}
