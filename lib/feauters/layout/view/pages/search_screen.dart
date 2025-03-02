import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/core/theme/app_colors.dart';
import 'package:movie/feauters/layout/view/widget/gridView_serch_brwese_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(10),
                    child: ImageIcon(
                      AssetImage(
                        AppAssets.searchIcon,
                      ),
                      color: AppColors.white,
                    ),
                  ),
                  filled: true,
                  fillColor: AppColors.darkGrey,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.transparent)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.transparent))),
            ),
            SizedBox(
              height: 10,
            ),
            GridviewSerchBrweseWidget(),
          ],
        ),
      ),
    );
  }
}
