import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/core/theme/app_colors.dart';
import 'package:movie/feauters/layout/view/widget/card_widget.dart';

class CaroselsliderWidget extends StatelessWidget {
  const CaroselsliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return CardWidget();
      },
      options: CarouselOptions(
        height: 370,
        enableInfiniteScroll: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        enlargeCenterPage: true,
        viewportFraction: .66,
      ),
    );
  }
}
