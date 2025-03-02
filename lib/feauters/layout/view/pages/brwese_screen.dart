import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/core/constants/app_text_style.dart';
import 'package:movie/core/theme/app_colors.dart';
import 'package:movie/feauters/layout/view/widget/tabs_container_widget.dart';

import '../widget/gridView_serch_brwese_widget.dart';

class BrweseScreen extends StatelessWidget {
  const BrweseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DefaultTabController(
            length: 5,
            child: TabBar(
              labelColor: AppColors.white,
              unselectedLabelColor: AppColors.goldColor,
              tabAlignment: TabAlignment.start,
              labelPadding: EdgeInsets.all(6),
              indicatorPadding: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs: [
                TabsContainerWidget(),
                TabsContainerWidget(),
                TabsContainerWidget(),
                TabsContainerWidget(),
                TabsContainerWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridviewSerchBrweseWidget(),
        ],
      ),
    );
  }
}
