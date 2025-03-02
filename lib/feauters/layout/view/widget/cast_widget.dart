import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/core/constants/app_text_style.dart';
import 'package:movie/core/theme/app_colors.dart';

class CastWidget extends StatelessWidget {
  const CastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: AppColors.darkGrey),
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                AppAssets.testCast,
                height: 70,
                width: 70,
              )),
          SizedBox(
            width: 7,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name : Hayley Atwell",
                style: AppTextStyle.textStyle20
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                "Character : Captain Carter",
                style: AppTextStyle.textStyle20
                    .copyWith(fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
