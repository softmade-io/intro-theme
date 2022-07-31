import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/screens/widgets/social_links.dart';
import 'package:intro/screens/widgets/stylish_headline.dart';
import 'package:intro/src/models/config_model.dart';
import 'package:intro/src/models/user_model.dart';
import 'package:intro/utils/api_config.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    Key? key,
    required this.isSocial,
    required this.isMale,
    required this.portfolioConfig,
    required this.user,
  }) : super(key: key);
  bool isSocial;
  bool isMale;
  PortfolioConfig portfolioConfig;
  User user;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  user.img == "N/A"
                      ? ApiConfig.baseUrl + '/public/default_user.png'
                      : ApiConfig.baseUrl + '/' + user.img,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    user.name,
                    style: GoogleFonts.firaSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Image.asset(
                      user.isMale ? "assets/male.png" : "assets/female.png",
                      height: 30,
                      width: 30,
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                user.status,
                style:
                    GoogleFonts.firaSans(color: Colors.indigo.withOpacity(0.9)),
              ),
            ),
            StylishHeadline(title: 'Personal Information'),
            ListTile(
              leading: Image.asset(
                "assets/certificationv2.png",
                height: 33,
                width: 33,
              ),
              title: Text(
                user.work,
                style: GoogleFonts.firaSans(
                  color: Colors.indigo.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ListTile(
              leading: Image.asset(
                "assets/phone.png",
                height: 33,
                width: 33,
              ),
              title: Text(
                user.number,
                style: GoogleFonts.firaSans(
                  color: Colors.indigo.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/email.svg",
                height: 33,
                width: 33,
              ),
              title: Text(
                user.email,
                style: GoogleFonts.firaSans(
                  color: Colors.indigo.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ListTile(
              leading: Image.asset(
                "assets/country.png",
                height: 33,
                width: 33,
              ),
              title: Text(
                user.country,
                style: GoogleFonts.firaSans(
                  color: Colors.indigo.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            ListTile(
              leading:
                  Image.asset("assets/location.png", height: 33, width: 33),
              title: Text(
                user.location,
                style: GoogleFonts.firaSans(
                  color: Colors.indigo.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            portfolioConfig.hideSocial
                ? SocialWidget(
                    user: user,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
