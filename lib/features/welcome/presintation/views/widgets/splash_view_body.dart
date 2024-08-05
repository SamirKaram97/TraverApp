import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:traver/core/utils/assets.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/constants.dart';
import '../../cubits/splash_cubit/splash_cubit.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initAnimation();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      SplashCubit()
        ..appStarted(context),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is DisplayOnBoarding) {
            GoRouter.of(context).pushReplacement(AppRouter.kOnBoardingView);
          }
          else if (state is UnAuthenticated) {
            GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
          }
        },
        child: Center(
          child: Opacity(
            opacity: 1 - animationController.value,
            child: SvgPicture.asset(
              AssetsData.logoWhite,
              height: 42,
              width: 42,
            ),
          ),
        ),
      ),
    );
  }


  _initAnimation() {
    animationController = AnimationController(
      duration: Constants.defaultDuration,
      vsync: this,
    )
      ..forward()
      ..addListener(() => setState(() {}));
  }

}
