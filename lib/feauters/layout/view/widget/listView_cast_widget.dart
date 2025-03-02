import 'package:flutter/material.dart';
import 'package:movie/feauters/layout/view/widget/cast_widget.dart';

class ListviewCastWidget extends StatelessWidget {
  const ListviewCastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CastWidget();
      },
      itemCount: 4,
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.transparent,
          thickness: 0,
        );
      },
    );
  }
}
