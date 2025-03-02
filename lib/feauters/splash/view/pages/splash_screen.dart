import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movie/core/app_route/app_route_name.dart';
import 'package:movie/core/constants/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: BounceInDown(
                  onFinish: (direction) {
                    Navigator.pushReplacementNamed(
                        context, AppRouteName.layoutScreen);
                  },
                  child: Image.asset(
                    AppAssets.splashBg,
                  )))
        ],
      ),
    );
  }
}
