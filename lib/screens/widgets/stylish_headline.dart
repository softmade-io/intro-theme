import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylishHeadline extends StatelessWidget {
  StylishHeadline({
    Key? key,
    required this.title,
  }) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.indigo.shade600,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.indigo.shade600,
              padding: const EdgeInsets.all(10),
              child: Text(
                title,
                style: GoogleFonts.firaSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
