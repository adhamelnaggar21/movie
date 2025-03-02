import 'package:flutter/material.dart';
import 'package:movie/feauters/layout/view/widget/genres_widget.dart';

class GridviewGenresWidget extends StatelessWidget {
  const GridviewGenresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3,
            mainAxisSpacing: 6,
            crossAxisSpacing: 5),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GenresWidget();
        });
  }
}
