import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intro/screens/home.screen.dart';
import 'package:intro/src/bindings/home_bindings.dart';

class Routes {
  String route;
  Widget widget;
  List<Bindings> bindings;
  Routes({
    required this.route,
    required this.widget,
    required this.bindings,
  });
}

class RoutesManager {
  static List<Routes> routes = [
    
    Routes(
      route: '/',
      widget: HomeScreen(),
      bindings: [HomeBindings()],
    )
  ];
}

class Config {
  String url = "blackcoder56";
}
