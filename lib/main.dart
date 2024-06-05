import 'package:flutter/material.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:nft/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColorss.PRIMARY_COLOR,
        colorScheme: const ColorScheme.dark(
          primary: AppColorss.PRIMARY_COLOR,
        ),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
