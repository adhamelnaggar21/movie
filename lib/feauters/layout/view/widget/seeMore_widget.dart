import 'package:flutter/material.dart';
import 'package:movie/core/theme/app_colors.dart';

class SeemoreWidget extends StatelessWidget {
  const SeemoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            "Action",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            "See More",
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 16,
            color: AppColors.goldColor,
          )
        ],
      ),
    );
  }
}
