import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/configs/theme_config.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/views/bottom_nav_bar.dart';
import 'package:nft/views/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        systemNavigationBarColor: AppColorss.PRIMARY_COLOR),
  );
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
        theme: ThemeConfig().themeData,
        home: child,
      ),
      child: const SplashPage(),
    );
  }
}
