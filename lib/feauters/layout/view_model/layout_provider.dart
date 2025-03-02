import 'package:flutter/material.dart';
import 'package:movie/feauters/layout/view/pages/brwese_screen.dart';
import 'package:movie/feauters/layout/view/pages/home_screen.dart';
import 'package:movie/feauters/layout/view/pages/profile_screen.dart';
import 'package:movie/feauters/layout/view/pages/search_screen.dart';

class LayoutProvider extends ChangeNotifier {
  int tapSelcted = 0;

  void onTapSelected(int index) {
    tapSelcted = index;
    notifyListeners();
  }

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    BrweseScreen(),
    ProfileScreen()
  ];
}
