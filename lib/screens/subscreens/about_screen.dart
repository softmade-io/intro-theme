import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutAcreen extends StatelessWidget {
  const AboutAcreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'In Development Area',
        style: GoogleFonts.firaSans(
          color: Colors.indigo,
          fontSize: 20,
        ),
      ),
    );
  }
}
