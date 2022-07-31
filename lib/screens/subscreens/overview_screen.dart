import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

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
