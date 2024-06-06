import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/constants/app_assets.dart';
import 'package:nft/constants/app_strings.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gradiantColor = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          Theme.of(context).colorScheme.primary.withOpacity(0.4)
        ]);
    final gradiantBorder = Border.all(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        width: 2.w);
    return DecoratedBox(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.SPLASH_BACKGROUND_IMG),
              fit: BoxFit.fill)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Gap(20.h),
                Text(
                  AppStrings.WELCOME_NFT_MARKET,
                  style:
                      TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w900),
                ),
                Gap(30.h),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(27.r),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.r),
                      decoration: BoxDecoration(
                          border: gradiantBorder,
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
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50.w, vertical: 20.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(34.r),
                                    gradient: gradiantColor,
                                    border: gradiantBorder,
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
                Gap(30.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
