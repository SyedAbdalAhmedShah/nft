import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/views/bottom_nav_bar.dart';
import 'package:nft/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(378.39, 787.41),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: AppStrings.APP_NAME,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColorss.PRIMARY_COLOR, elevation: 0),
          scaffoldBackgroundColor: AppColorss.PRIMARY_COLOR,
          colorScheme: const ColorScheme.dark(
              primary: AppColorss.PRIMARY_COLOR,
              secondary: AppColorss.BLUE_COLOR),
          useMaterial3: true,
        ),
        home: child,
      ),
      child: const BottomNavBarScreen(),
    );
  }
}
