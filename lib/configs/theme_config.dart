import 'package:flutter/material.dart';
import 'package:nft/constants/app_colors.dart';

class ThemeConfig {
  ThemeConfig();

  ThemeData get themeData => ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColorss.PRIMARY_COLOR, elevation: 0),
        scaffoldBackgroundColor: AppColorss.PRIMARY_COLOR,
        colorScheme: const ColorScheme.dark(
            primary: AppColorss.PRIMARY_COLOR,
            secondary: AppColorss.BLUE_COLOR),
        useMaterial3: true,
      );
}
