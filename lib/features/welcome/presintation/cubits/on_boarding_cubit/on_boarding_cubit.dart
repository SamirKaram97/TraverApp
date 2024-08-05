import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:traver/core/utils/assets.dart';
import 'package:traver/core/utils/constants.dart';
import 'package:traver/core/utils/strings.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  late int currentIndex;
  late PageController pageController;
  List<OnBoardingItemModel> onBoardingItems=[
    OnBoardingItemModel(image: AssetsData.onBoardingImage,title: AppStrings.onBoardingTitle1,subTitle: AppStrings.onBoardingSubTitle1),
    OnBoardingItemModel(image: AssetsData.onBoardingImage2,title: AppStrings.onBoardingTitle2,subTitle: AppStrings.onBoardingSubTitle2),
    OnBoardingItemModel(image: AssetsData.onBoardingImage3,title: AppStrings.onBoardingTitle3,subTitle: AppStrings.onBoardingSubTitle3),
  ];



  void onBoardingChangePage(int index){
    currentIndex=index;
    if(currentIndex == 2){
      emit(OnBoardingLastPageState());
    }else{
      emit(OnBoardingChangePageState());
    }
  }
  void onBoardingButtonClicked()
  {
    pageController.nextPage(duration: Constants.onBoardingTransDuration, curve: Curves.fastOutSlowIn);
    if(currentIndex == 2){
      emit(OnBoardingExitState());
    }
    else
      {
        onBoardingChangePage(currentIndex+1);
      }
  }

}

class OnBoardingItemModel
{
  final String title;
  final String subTitle;
  final String image;
  OnBoardingItemModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}
