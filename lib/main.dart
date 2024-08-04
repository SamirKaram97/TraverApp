import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/app_router.dart';
import 'core/utils/colors.dart';

void main() {
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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}
