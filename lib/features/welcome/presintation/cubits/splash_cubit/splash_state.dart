part of 'splash_cubit.dart';

@immutable
sealed class SplashState {}

final class SplashInitial extends SplashState {}

class DisplayOnBoarding extends SplashState {}

class Authenticated extends SplashState {}

class UnAuthenticated extends SplashState {}