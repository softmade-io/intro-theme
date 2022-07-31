import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/src/models/education_model.dart';

class EducationItem extends StatelessWidget {
  EducationItem({
    Key? key,
    required this.educationModel,
  }) : super(key: key);
  EducationModel educationModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.indigo,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/education.png",
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  educationModel.schoolName,
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade400,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/details.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'DEGREE ',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Flexible(
                  child: Text(
                    educationModel.degree,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/country.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'UNIVERSITY/BOARD ',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Flexible(
                  child: Text(
                    educationModel.university,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/calendar.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'START',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Flexible(
                  child: Text(
                    educationModel.startAt,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'END',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    educationModel.endAt,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/certificationv2.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'MARKS OBTAINED ',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Flexible(
                  child: Text(
                    educationModel.obtainedMarks,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/location.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'LOCATED AT',
                  style: GoogleFonts.firaSans(
                    color: Colors.indigo.shade500,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Flexible(
                  child: Text(
                    educationModel.located,
                    style: GoogleFonts.firaSans(
                      color: Colors.orange.shade500,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
