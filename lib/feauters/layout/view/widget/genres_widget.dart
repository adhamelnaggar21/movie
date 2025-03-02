import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_text_style.dart';
import 'package:movie/core/theme/app_colors.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      width: 122,
      decoration: BoxDecoration(
          color: AppColors.darkGrey, borderRadius: BorderRadius.circular(12)),
      child: Text(
        "Action",
        style: AppTextStyle.textStyle16.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
