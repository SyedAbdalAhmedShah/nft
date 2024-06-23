import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/utils/widgets/crypto_list.dart';
import 'package:nft/utils/widgets/stats_button.dart';

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
              indicatorPadding: EdgeInsets.symmetric(horizontal: 10.w),
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
        body: const TabBarView(children: [
          Rankingview(),
          ActivityView(),
        ]),
      ),
    );
  }
}

class Rankingview extends StatelessWidget {
  const Rankingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(10.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StatsButton(
                  buttonName: AppStrings.ALL_CATEGORY,
                  leadingIcon: Icons.grid_view,
                ),
                StatsButton(
                  buttonName: AppStrings.ALL_CHAIN,
                  leadingIcon: Icons.link,
                ),
              ],
            ),
            Gap(20.h),
            
            CryptoList()
          ],
        ),
      ),
    );
  }
}

class ActivityView extends StatelessWidget {
  const ActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
