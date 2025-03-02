import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/core/theme/app_colors.dart';
import 'package:movie/feauters/layout/view_model/layout_provider.dart';
import 'package:provider/provider.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LayoutProvider(),
      child: Builder(
        builder: (context) {
          var provider = context.watch<LayoutProvider>();

          return Scaffold(
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: AppColors.darkGrey,
                  selectedItemColor: AppColors.goldColor,
                  unselectedItemColor: Colors.white,
                  currentIndex: provider.tapSelcted,
                  onTap: (value) {
                    provider.onTapSelected(value);
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: const ImageIcon(AssetImage(AppAssets.homeIcon)),
                        label: "Home"),
                    BottomNavigationBarItem(
                        icon: const ImageIcon(AssetImage(AppAssets.searchIcon)),
                        label: "Search"),
                    BottomNavigationBarItem(
                        icon:
                            const ImageIcon(AssetImage(AppAssets.broweseIcon)),
                        label: "Browese"),
                    BottomNavigationBarItem(
                        icon:
                            const ImageIcon(AssetImage(AppAssets.profileIcon)),
                        label: "Profile")
                  ],
                ),
              ),
            ),
            body: provider.screens[provider.tapSelcted],
          );
        },
      ),
    );
  }
}
