
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../cubits/on_boarding_cubit/on_boarding_cubit.dart';

class OnBoardingViewItemTitleAndSubtitle extends StatelessWidget {
  const OnBoardingViewItemTitleAndSubtitle({
    super.key, required this.onBoardingItemModel,
  });
  final OnBoardingItemModel onBoardingItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(AssetsData.logoDark),
          const SizedBox(height: 48,),
          Text(onBoardingItemModel.title,style: Styles.textStyleBold48(context),),
          const SizedBox(height: 22,),
          Text(onBoardingItemModel.subTitle,style:Styles.textStyleNormal16(context),),
          const SizedBox(height: 22,),
          SizedBox(height: MediaQuery.of(context).size.height*0.25,)
        ],
      ),
    );
  }
}



