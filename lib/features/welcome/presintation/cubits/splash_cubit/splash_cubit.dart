import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:traver/core/services/service_locator.dart';

import '../../../../../../core/utils/constants.dart';
import '../../../../../core/services/shared_pref_singleton.dart';
import '../../../../../../core/utils/strings.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void appStarted(context)async{
    await Future.delayed(Constants.defaultDuration);
    bool isOnBoardingSkip= await getIt<SharedPref>().getBool(AppStrings.isOnBoardingSkip);
    if(isOnBoardingSkip){
      emit(UnAuthenticated());
    }
    else {
      emit(DisplayOnBoarding());
    }
  }
}
