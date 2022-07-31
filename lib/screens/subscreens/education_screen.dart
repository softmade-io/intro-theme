import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/screens/widgets/education_item.dart';
import 'package:intro/src/controller/data_controller.dart';
import 'package:intro/src/controller/home_controller.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  late HomeController homeController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController = Get.find<HomeController>();
    homeController.getEducations();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    DataController data = Get.find<DataController>();
    return Obx(() {
      return homeController.isLoading.isTrue
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : data.educations.isEmpty
              ? Center(
                  child: Text(
                    'No Data Found',
                    style: GoogleFonts.firaSans(color: Colors.indigo),
                  ),
                )
              : width < 1174
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: EducationItem(
                            educationModel: data.educations.value[index],
                          ),
                        );
                      },
                      itemCount: data.educations.length,
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 600,
                        mainAxisExtent: 210,
                        childAspectRatio: 4 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (ctx, index) {
                        return EducationItem(
                          educationModel: data.educations.value[index],
                        );
                      },
                      itemCount: data.educations.length,
                    );
    });
  }
}
