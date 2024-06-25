import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft/configs/theme_config.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/views/splash.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


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
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: AppStrings.APP_NAME,
        theme: ThemeConfig().themeData,
        home: const SplashPage(),
      );
    });
  }
}
