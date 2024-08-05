import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/strings.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../cubits/on_boarding_cubit/on_boarding_cubit.dart';

_getButtonText(state) {
  if (state is OnBoardingLastPageState) {
    return AppStrings.getStarted;
  } else {
    return AppStrings.next;
  }
}

class OnBoardingButtonBlocBuilder extends StatelessWidget {
  const OnBoardingButtonBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return AppButton(
            onPressed: () {
              BlocProvider.of<OnBoardingCubit>(context)
                  .onBoardingButtonClicked();
            },
            text: _getButtonText(state));
      },
    );
  }
}