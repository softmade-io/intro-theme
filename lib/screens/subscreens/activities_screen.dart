import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'In Development area',
        style: GoogleFonts.firaSans(
          color: Colors.indigo,
          fontSize: 20,
        ),
      ),
    );
  }
}
