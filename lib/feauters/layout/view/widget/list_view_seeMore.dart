import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/feauters/layout/view/widget/card_widget.dart';

class ListViewSeemore extends StatelessWidget {
  const ListViewSeemore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CardWidget(),
          );
        },
      ),
    );
  }
}
