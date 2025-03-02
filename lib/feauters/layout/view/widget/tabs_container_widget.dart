import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_text_style.dart';
import 'package:movie/core/theme/app_colors.dart';

class TabsContainerWidget extends StatelessWidget {
  const TabsContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.goldColor),
          color: Colors.transparent),
      child: Text(
        "Adham",
        style: AppTextStyle.textStyle20.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
