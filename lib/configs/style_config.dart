import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/constants/app_colors.dart';

class StyleConfig {
  final BuildContext context;
  StyleConfig({required this.context});

  LinearGradient get linearGradient => LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            Theme.of(context).colorScheme.primary.withOpacity(0.4)
          ]);
  LinearGradient get linearGradient2 => LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColorss.BACKGROUND_2,
            AppColorss.BACKGROUND_3,
            AppColorss.PRIMARY_COLOR.withOpacity(0.2),
            AppColorss.PRIMARY_COLOR.withOpacity(0.4),
          ]);

  Border get linearBorder => Border.all(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
      width: 2.w);
}
