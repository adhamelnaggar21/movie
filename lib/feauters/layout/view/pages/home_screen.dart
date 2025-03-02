import 'package:flutter/material.dart';
import 'package:movie/core/app_route/app_route_name.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/core/theme/app_colors.dart';
import 'package:movie/feauters/layout/view/widget/caroselSlider_widget.dart';
import 'package:movie/feauters/layout/view/widget/list_view_seeMore.dart';
import 'package:movie/feauters/layout/view/widget/seeMore_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    AppAssets.testImage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.black.withOpacity(.8),
                          AppColors.black.withOpacity(.8),
                          AppColors.black,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(AppAssets.availableNow),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRouteName.homeScreenDetails);
                        },
                        child: const CaroselsliderWidget()),
                    Image.asset(
                      AppAssets.watchNow,
                    ),
                    const SeemoreWidget(),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRouteName.homeScreenDetails);
                        },
                        child: const ListViewSeemore()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
