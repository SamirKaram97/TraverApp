
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'shared_pref_singleton.dart';
import 'bloc_observer.dart';

final getIt = GetIt.instance;

void setupServiceLocator()async {
  getIt.registerSingleton(SharedPref()..sharedPrefInit());
}
void mainInitMethods() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
}