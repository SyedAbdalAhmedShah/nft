import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StyleConfig {
  final BuildContext context;
  StyleConfig({required this.context});

  LinearGradient get linearGradient => LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            Theme.of(context).colorScheme.primary.withOpacity(0.4)
          ]);

  Border get linearBorder => Border.all(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
      width: 2.w);
}
