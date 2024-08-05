
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traver/features/welcome/presintation/views/widgets/page_indicator.dart';

import '../../cubits/on_boarding_cubit/on_boarding_cubit.dart';

class PageIndicatorBlocBuilder extends StatelessWidget {
  const PageIndicatorBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return PageIndicator(currentIndex: BlocProvider
            .of<OnBoardingCubit>(context)
            .currentIndex,);
      },
    );
  }
}
