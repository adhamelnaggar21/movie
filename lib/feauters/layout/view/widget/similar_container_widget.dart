import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';

class SimilarContainerWidget extends StatelessWidget {
  const SimilarContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(AppAssets.testImage),
      ),
    );
  }
}
