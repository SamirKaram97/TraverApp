import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:traver/core/utils/app_router.dart';
import 'package:traver/core/utils/functions/service_locator.dart';
import 'package:traver/core/utils/strings.dart';
import '../../../../../core/utils/shared_pref_helper.dart';
import '../../cubits/on_boarding_cubit/on_boarding_cubit.dart';
import 'on_boarding_view_item.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({
    super.key,
  });

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {

  @override
  void initState() {
    _initValues();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var controller = BlocProvider.of<OnBoardingCubit>(context).pageController;
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {
        if (state is OnBoardingExitState) {
          getIt<SharedPrefHelper>().setData(AppStrings.isOnBoardingSkip, true);
          GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
        }
      },
      builder: (context, state) {
        var items=BlocProvider.of<OnBoardingCubit>(context).onBoardingItems;
        return PageView.builder(
          itemCount: 3,
          controller: controller,
          onPageChanged: (value) {
            context.read<OnBoardingCubit>().onBoardingChangePage(value);
          },
          itemBuilder: (context, index) {
            return  OnBoardingViewItem(onBoardingItemModel:items[index],);
          },
        );
      },
    );
  }

  _initValues() {
    BlocProvider.of<OnBoardingCubit>(context).pageController = PageController(
      initialPage: 0,
    );
    BlocProvider.of<OnBoardingCubit>(context).currentIndex = 0;
  }

}
