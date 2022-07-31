import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/screens/widgets/stylish_headline.dart';
import 'package:intro/src/models/user_model.dart';

class SocialWidget extends StatelessWidget {
  SocialWidget({
    Key? key,
    required this.user,
  }) : super(key: key);
  User user;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StylishHeadline(title: 'Social Accounts'),
        // Container(
        //   height: 60,
        //   alignment: Alignment.center,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Padding(
        //         padding: EdgeInsets.all(10),
        //         child: IconButton(
        //           onPressed: () {},
        //           icon: FaIcon(
        //             FontAwesomeIcons.quora,
        //             color: Colors.red.shade700,
        //             size: 40,
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.all(10),
        //         child: IconButton(
        //           onPressed: () {},
        //           icon: FaIcon(
        //             FontAwesomeIcons.instagram,
        //             size: 40,
        //             color: Colors.orangeAccent.shade700,
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.all(10),
        //         child: IconButton(
        //           onPressed: () {},
        //           icon: FaIcon(
        //             FontAwesomeIcons.facebook,
        //             color: Colors.blue.shade600,
        //             size: 40,
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        // Container(
        //   height: 60,
        //   alignment: Alignment.center,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Padding(
        //         padding: EdgeInsets.all(10),
        //         child: IconButton(
        //           onPressed: () {},
        //           icon: FaIcon(
        //             FontAwesomeIcons.twitter,
        //             color: Colors.indigo.shade600,
        //             size: 40,
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.all(10),
        //         child: IconButton(
        //           onPressed: () {},
        //           icon: FaIcon(
        //             FontAwesomeIcons.github,
        //             color: Colors.black.withOpacity(0.8),
        //             size: 40,
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.all(10),
        //         child: IconButton(
        //           onPressed: () {},
        //           icon: FaIcon(
        //             FontAwesomeIcons.linkedin,
        //             color: Colors.blue.shade900,
        //             size: 40,
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // )
        ListTile(
                onTap: () {},
                leading: SvgPicture.asset(
                  "assets/github.svg",
                  height: 33,
                  width: 33,
                ),
                title: Text(
                  user.github,
                  style: GoogleFonts.firaSans(
                      color: Colors.indigo.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
        const SizedBox(
          height: 1,
        ),
         ListTile(
                onTap: () {},
                leading: SvgPicture.asset(
                  "assets/linkdin.svg",
                  height: 33,
                  width: 33,
                ),
                title: Text(
                  user.linkedin,
                  style: GoogleFonts.firaSans(
                      color: Colors.indigo.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
        const SizedBox(
          height: 1,
        ),
        ListTile(
                onTap: () {},
                leading: SvgPicture.asset(
                  "assets/twitter.svg",
                  height: 33,
                  width: 33,
                ),
                title: Text(
                  user.twitter,
                  style: GoogleFonts.firaSans(
                      color: Colors.indigo.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
        const SizedBox(
          height: 1,
        ),
         ListTile(
                onTap: () {},
                leading: SvgPicture.asset(
                  "assets/youtube.svg",
                  height: 33,
                  width: 33,
                ),
                title: Text(
                  user.youtube,
                  style: GoogleFonts.firaSans(
                      color: Colors.indigo.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
        const SizedBox(
          height: 1,
        ),
        ListTile(
                onTap: () {},
                leading: SvgPicture.asset(
                  "assets/instagram.svg",
                  height: 33,
                  width: 33,
                ),
                title: Text(
                  user.instagram,
                  style: GoogleFonts.firaSans(
                      color: Colors.indigo.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
        const SizedBox(
          height: 1,
        ),
        ListTile(
          onTap: () {},
          leading: SvgPicture.asset(
            "assets/facebook.svg",
            height: 33,
            width: 33,
          ),
          title: Text(
            user.facebook,
            style: GoogleFonts.firaSans(
                color: Colors.indigo.withOpacity(0.8),
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
          ),
        ),
        const SizedBox(
          height: 1,
        ),
      ],
    );
  }
}
