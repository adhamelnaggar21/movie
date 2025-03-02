import 'package:flutter/material.dart';
import 'package:movie/feauters/layout/view/widget/screen_shot-widget.dart';

class ListviewScreenshot extends StatelessWidget {
  const ListviewScreenshot({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ScreenShotWidget();
      },
      itemCount: 3,
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.transparent,
          thickness: 0,
        );
      },
    );
  }
}
