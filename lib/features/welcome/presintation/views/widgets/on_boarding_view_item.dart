
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traver/core/utils/assets.dart';
import 'package:traver/core/utils/strings.dart';

import '../../../../../core/utils/styles.dart';
import '../../cubits/on_boarding_cubit/on_boarding_cubit.dart';
import 'gradiant_container.dart';
import 'on_boarding_viewItem_title_and_subtitle.dart';

class OnBoardingViewItem extends StatelessWidget {
  const OnBoardingViewItem({
    super.key, required this.onBoardingItemModel,
  });
  final OnBoardingItemModel onBoardingItemModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(onBoardingItemModel.image,fit: BoxFit.cover,),
          const GradiantContainer(),
          OnBoardingViewItemTitleAndSubtitle(onBoardingItemModel: onBoardingItemModel,)
        ],
      ),
    );
  }
}
