import 'package:flutter/material.dart';
import 'package:movie/core/app_route/app_route_name.dart';
import 'package:movie/feauters/layout/view/pages/home_screen_details.dart';
import 'package:movie/feauters/layout/view/pages/layout_screen.dart';

class GoRoute {
  static Map<String, Widget Function(BuildContext)> routs = {
    AppRouteName.layoutScreen: (_) => LayoutScreen(),
    AppRouteName.homeScreenDetails: (_) => HomeScreenDetails(),
  };
}
