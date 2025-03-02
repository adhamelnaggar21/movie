import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/core/theme/app_colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Image.asset(
              AppAssets.testImage,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                alignment: Alignment.center,
                width: 58,
                height: 28,
                decoration: BoxDecoration(
                    color: AppColors.black.withOpacity(.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("7.7"),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      AppAssets.starImge,
                      height: 15,
                      width: 15,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
