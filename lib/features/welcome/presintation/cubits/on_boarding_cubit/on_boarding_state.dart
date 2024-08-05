part of 'on_boarding_cubit.dart';

@immutable
sealed class OnBoardingState {}

final class OnBoardingInitial extends OnBoardingState {}

final class OnBoardingChangePageState extends OnBoardingState {}

final class OnBoardingLastPageState extends OnBoardingState {}

final class OnBoardingExitState extends OnBoardingState {}


