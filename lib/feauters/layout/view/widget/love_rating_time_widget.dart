import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_text_style.dart';
import 'package:movie/core/theme/app_colors.dart';

class LoveRatingTimeWidget extends StatelessWidget {
  const LoveRatingTimeWidget(
      {super.key, required this.imageIcon, required this.text});
  final String imageIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 110,
      decoration: BoxDecoration(
          color: AppColors.darkGrey, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(
              imageIcon,
            ),
            color: AppColors.goldColor,
            size: 25,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: AppTextStyle.textStyle22
                .copyWith(fontWeight: FontWeight.w700, color: AppColors.white),
          )
        ],
      ),
    );
  }
}
