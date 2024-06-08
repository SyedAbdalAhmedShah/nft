import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/configs/style_config.dart';
import 'package:nft/constants/app_assets.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 170.w,
          padding:
              EdgeInsets.only(left: 10.w, right: 30.w, top: 10.h, bottom: 10.h),
          decoration: BoxDecoration(
              border: StyleConfig(context: context).linearBorder,
              gradient: StyleConfig(context: context).linearGradient2,
              borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110.h,
                width: 130.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                        image: AssetImage(
                          AppAssets.ART_SLIDER_IMG,
                        ),
                        fit: BoxFit.fill)),
              ),
              Gap(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Abstract Art"),
                  Icon(
                    Icons.favorite,
                    size: 14.r,
                    color: Colors.red,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
