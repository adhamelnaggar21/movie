import 'package:flutter/material.dart';
import 'package:movie/core/app_route/app_route_name.dart';
import 'package:movie/core/app_route/go_route.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      initialRoute: AppRouteName.layoutScreen,
      routes: GoRoute.routs,
    );
  }
}
