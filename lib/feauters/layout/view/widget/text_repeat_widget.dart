import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_text_style.dart';

class TextRepeatWidget extends StatelessWidget {
  const TextRepeatWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.textStyle24.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
