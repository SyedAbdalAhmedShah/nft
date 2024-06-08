import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/configs/style_config.dart';
import 'package:nft/constants/app_assets.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
              border: StyleConfig(context: context).linearBorder,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(27.r)),
          child: Column(
            children: [
              Image.asset(
                AppAssets.ART_SLIDER_IMG,
                height: 70.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
