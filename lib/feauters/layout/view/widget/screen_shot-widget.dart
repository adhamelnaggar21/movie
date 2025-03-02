import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';

class ScreenShotWidget extends StatelessWidget {
  const ScreenShotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 167,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppAssets.testImage,
              ))),
    );
  }
}
