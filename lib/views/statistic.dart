import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:nft/constants/app_strings.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          title: const Text(
            AppStrings.STATS,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: const Icon(Icons.more_horiz_rounded),
            ),
          ],
          bottom: TabBar(
              dividerColor: AppColorss.BACKGROUND_2,
              indicatorColor: Theme.of(context).colorScheme.secondary,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              overlayColor:
                  const WidgetStatePropertyAll(AppColorss.BACKGROUND_2),
              labelPadding: EdgeInsets.symmetric(vertical: 5.h),
              indicator: BoxDecoration(
                color: Colors.transparent,
                // border: Border,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.5),
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              tabs: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.stacked_bar_chart),
                    Text(
                      AppStrings.RANKING,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.multiline_chart),
                    Text(
                      AppStrings.ACTIVITY,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
