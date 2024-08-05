import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/theme/themes.dart';
import 'core/utils/app_router.dart';
import 'core/theme/colors.dart';
import 'core/services/bloc_observer.dart';
import 'core/services/service_locator.dart';
import 'core/services/shared_pref_singleton.dart';

void main() async{
  mainInitMethods();
  runApp(const TraverApp());
}

class TraverApp extends StatelessWidget {
  const TraverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: 'Traver',
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: getLightTheme(context),
    );
  }
}
