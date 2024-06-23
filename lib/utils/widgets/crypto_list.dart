import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/constants/app_assets.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/constants/constants.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColorss.BACKGROUND_2, width: 1.6.w)),
        child: ListView.separated(
          itemCount: cryptoNamess.length,
          separatorBuilder: (context, index) => Gap(12.h),
          itemBuilder: (context, index) => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text((index + 1).toString()),
                  Gap(5.w),
                  Container(
                    height: 60.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: const DecorationImage(
                            image: AssetImage(AppAssets.ART_SLIDER_IMG))),
                  ),
                  Gap(10.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cryptoNamess[index],
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                      Gap(10.h),
                      const Text(
                        AppStrings.VIEW_INFO,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.currency_bitcoin,
                        size: 15.r,
                      ),
                      const Text(
                        '2000000.52',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  const Text(
                    "3.99 %",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
