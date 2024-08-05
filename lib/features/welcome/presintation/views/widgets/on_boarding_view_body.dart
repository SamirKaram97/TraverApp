import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traver/features/welcome/presintation/views/widgets/page_indicator.dart';
import 'package:traver/features/welcome/presintation/views/widgets/page_indicator_bloc_builder.dart';
import 'package:traver/features/welcome/presintation/views/widgets/page_view_widget.dart';

import '../../cubits/on_boarding_cubit/on_boarding_cubit.dart';
import 'on_boarding_button_bloc_builder.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: const Stack(
        children: [
          PageViewWidget(),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: OnBoardingButtonBlocBuilder(),
            ),
          ),
          PageIndicatorBlocBuilder() //button
        ],
      ),
    );
  }
}
