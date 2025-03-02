import 'package:flutter/material.dart';
import 'package:movie/core/constants/app_assets.dart';
import 'package:movie/core/constants/app_text_style.dart';
import 'package:movie/core/theme/app_colors.dart';

import 'package:movie/feauters/layout/view/widget/gridView_genres_widget.dart';
import 'package:movie/feauters/layout/view/widget/gridView_similar.dart';
import 'package:movie/feauters/layout/view/widget/listView_cast_widget.dart';
import 'package:movie/feauters/layout/view/widget/listView_screenShot.dart';
import 'package:movie/feauters/layout/view/widget/love_rating_time_widget.dart';

import 'package:movie/feauters/layout/view/widget/text_repeat_widget.dart';

class HomeScreenDetails extends StatelessWidget {
  const HomeScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 4 / 6,
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
                            AppColors.black.withOpacity(.3),
                            AppColors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                      right: 20,
                      top: 50,
                      child: ImageIcon(AssetImage(AppAssets.iconSave))),
                  Center(
                      child: Image.asset(
                    AppAssets.playerVideo,
                    height: 97,
                    width: 97,
                  )),
                  Positioned(
                    top: 500,
                    left: 20,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Doctor Strange in the Multiverse \nof Madness ",
                      style: AppTextStyle.textStyle24
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    top: 570,
                    left: 190,
                    child: Text(
                      "2020",
                      style: AppTextStyle.textStyle20.copyWith(
                          fontWeight: FontWeight.w700, color: AppColors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.red,
                                  foregroundColor: AppColors.white,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 11),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: () {},
                              child: const Text(
                                "Watch",
                                style: AppTextStyle.textStyle20,
                              ))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: LoveRatingTimeWidget(
                        imageIcon: AppAssets.iconLove,
                        text: "15",
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: LoveRatingTimeWidget(
                        imageIcon: AppAssets.iconTime,
                        text: "90",
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: LoveRatingTimeWidget(
                        imageIcon: AppAssets.iconRating,
                        text: "7.9",
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextRepeatWidget(text: "Screen Shots"),
                  const ListviewScreenshot(),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextRepeatWidget(text: "Similar"),
                  const GridviewSimilar(),
                  const TextRepeatWidget(text: "Summary"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Following the events of Spider-Man No Way Home, Doctor Strange unwittingly casts a forbidden spell that accidentally opens up the multiverse. With help from Wong and Scarlet Witch, Strange confronts various versions of himself as well as teaming up with the young America Chavez while traveling through various realities and working to restore reality as he knows it. Along the way, Strange and his allies realize they must take on a powerful new adversary who seeks to take over the multiverse.—Blazer346",
                    style: AppTextStyle.textStyle16,
                    maxLines: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextRepeatWidget(text: "Cast"),
                  const ListviewCastWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextRepeatWidget(text: "Genres"),
                  const GridviewGenresWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
