import 'package:flutter/cupertino.dart';
import 'package:intro/screens/subscreens/about_screen.dart';
import 'package:intro/screens/subscreens/activities_screen.dart';
import 'package:intro/screens/subscreens/blogs_screen.dart';
import 'package:intro/screens/subscreens/certifications_screen.dart';
import 'package:intro/screens/subscreens/education_screen.dart';
import 'package:intro/screens/subscreens/overview_screen.dart';
import 'package:intro/screens/subscreens/project_screen.dart';
import 'package:intro/src/models/header_option.dart';

class WidgetManager {
  static List<HeaderOption> widgets = [
    HeaderOption(
      name: 'Overview',
      isSvg: false,
      path: "assets/activities.png",
      widget: const OverviewScreen(),
    ),
    HeaderOption(
      name: 'Education',
      isSvg: false,
      path: "assets/education.png",
      widget: EducationScreen(),
    ),
    HeaderOption(
      name: 'Projects',
      isSvg: false,
      path: "assets/projects.png",
      widget: Projects(),
    ),
    HeaderOption(
      name: 'Certifications',
      isSvg: false,
      path: "assets/certifications.png",
      widget: CertificationScreen(),
    ),
    HeaderOption(
      name: 'Blogs',
      isSvg: false,
      path: "assets/blogs.png",
      widget: BlogsScreen(),
    ),
    HeaderOption(
      name: 'Activities',
      isSvg: false,
      path: "assets/activities.png",
      widget: ActivitiesScreen(),
    ),
    HeaderOption(
      name: 'About',
      isSvg: true,
      path: "assets/about.svg",
      widget: AboutAcreen(),
    )
  ];

  static Widget getWidget({required String key}) {
    for (int i = 0; i < widgets.length; i++) {
      if (widgets[i].name == key) {
        return widgets[i].widget;
      }
    }
    return Center(
      child: Text('Widget not found with name $key}'),
    );
  }
}
