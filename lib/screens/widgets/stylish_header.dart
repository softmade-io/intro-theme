import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/src/controller/home_controller.dart';

class StylishHeader extends StatelessWidget {
  const StylishHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (home) {
      return Container(
        height: 40,
        decoration: const BoxDecoration(
          // color: Colors.indigo.withOpacity(0.1),
          border: Border(
            bottom: BorderSide(
              color: Colors.black12,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: home.currentValue.isNotEmpty
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            home.category[index].name == home.currentValue.value
                                ? const BorderSide(
                                    color: Colors.green,
                                    style: BorderStyle.solid,
                                  )
                                : const BorderSide(
                                    color: Colors.transparent,
                                  ),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        home.changeIndex(
                          value: home.category[index].name,
                          widget: home.category[index].widget,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            home.category[index].isSvg
                                ? SvgPicture.asset(
                                    home.category[index].path,
                                    height: 15,
                                    width: 15,
                                  )
                                : Image.asset(
                                    home.category[index].path,
                                    height: 15,
                                    width: 15,
                                  ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                home.category[index].name,
                                style: home.currentValue.value ==
                                        home.category[index].name
                                    ? GoogleFonts.firaSans(
                                        color: Colors.indigo.shade600,
                                        fontWeight: FontWeight.bold,
                                      )
                                    : GoogleFonts.firaSans(
                                        color: Colors.black,
                                      ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: home.category.length,
                scrollDirection: Axis.horizontal,
              )
            : Container(),
      );
    });
  }
}
