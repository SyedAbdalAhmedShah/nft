import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/constants/app_assets.dart';
import 'package:nft/constants/app_strings.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  style: TextStyle(fontSize: 36.sp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
