import 'package:flutter/material.dart';

import 'package:movie/feauters/layout/view/widget/card_widget.dart';

class GridviewSerchBrweseWidget extends StatelessWidget {
  const GridviewSerchBrweseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .60,
              mainAxisSpacing: 0,
              crossAxisSpacing: 15),
          itemCount: 20,
          itemBuilder: (context, index) {
            return CardWidget();
          }),
    );
  }
}
