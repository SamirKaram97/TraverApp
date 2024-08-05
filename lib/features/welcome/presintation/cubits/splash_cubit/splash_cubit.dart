import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:traver/core/utils/functions/service_locator.dart';

import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/shared_pref_helper.dart';
import '../../../../../../core/utils/strings.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void appStarted(context)async{
    await Future.delayed(Constants.defaultDuration);
    bool isOnBoardingSkip= await getIt<SharedPrefHelper>().getBool(AppStrings.isOnBoardingSkip);
    if(isOnBoardingSkip){
      emit(UnAuthenticated());
    }
    else {
      emit(DisplayOnBoarding());
    }
  }
}
