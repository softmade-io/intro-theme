import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:intro/src/bindings/initial_bindings.dart';
import 'package:intro/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      initialBinding: Init(),
      title: 'Portfolio | Intro',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      enableLog: true,
      getPages: RoutesManager.routes
          .map(
            (e) => GetPage(
              name: e.route,
              page: () => e.widget,
              bindings: e.bindings.map((e) => e).toList(),
            ),
          )
          .toList(),
      initialRoute: '/',
    );
  }
}
