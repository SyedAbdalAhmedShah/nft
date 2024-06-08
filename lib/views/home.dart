import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/configs/style_config.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/utils/widgets/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(kTextTabBarHeight + 5.h),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            AppStrings.APP_NAME,
            style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Gap(20.h),
        const AppCarouselSlider(),
        Gap(20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(
            children: [
              Text(
                AppStrings.TRENDING_COL,
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w500),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(27.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30.r),
                    decoration: BoxDecoration(
                        border: StyleConfig(context: context).linearBorder,
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.1),
                        borderRadius: BorderRadius.circular(27.r)),
                    child: Column(
                      children: [
                        Text(
                          AppStrings.EXPLORE_NFT,
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        Gap(5.h),
                        Text(
                          AppStrings.YOU_CAN_BUY,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white.withOpacity(0.4)),
                        ),
                        Gap(30.h),
                        GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(34.r),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50.w, vertical: 20.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(34.r),
                                  gradient: StyleConfig(context: context)
                                      .linearGradient,
                                  border: StyleConfig(context: context)
                                      .linearBorder,
                                ),
                                child: Text(
                                  AppStrings.GET_STARTED,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
