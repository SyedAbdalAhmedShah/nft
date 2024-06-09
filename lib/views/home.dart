import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/constants/constants.dart';
import 'package:nft/utils/widgets/glass_card.dart';
import 'package:nft/utils/widgets/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(kTextTabBarHeight + 15.h),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              AppStrings.APP_NAME,
              style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Gap(30.h),
          const AppCarouselSlider(),
          Gap(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.TRENDING_COL,
                  style:
                      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w500),
                ),
                Gap(5.h),
                SizedBox(
                  height: 180.h,
                  child: ListView.builder(
                    itemCount: trendingCollection.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GlassCard(
                        imagePath: trendingCollection[index],
                      ),
                    ),
                  ),
                ),
                Gap(20.h),
                Text(
                  AppStrings.TOP_SELLER,
                  style:
                      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w500),
                ),
                Gap(5.h),
                SizedBox(
                  height: 180.h,
                  child: ListView.builder(
                    itemCount: topSeller.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GlassCard(
                        imagePath: topSeller[index],
                      ),
                    ),
                  ),
                ),
                Gap(15.h),
                Text(
                  AppStrings.NEW_COMING,
                  style:
                      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w500),
                ),
                Gap(5.h),
                // SizedBox(
                //   height: 180.h,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index) => const Padding(
                //       padding: EdgeInsets.only(left: 8.0),
                //       child: GlassCard(),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Gap(100.h)
        ],
      ),
    );
  }
}
