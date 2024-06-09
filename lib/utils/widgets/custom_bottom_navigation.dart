import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/constants/app_assets.dart';
import 'package:nft/constants/app_colors.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              width: 1.w),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60.r), topRight: Radius.circular(60.r)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                const Color(0xff420C5B).withOpacity(0.8),
                AppColorss.PRIMARY_COLOR.withOpacity(0.9)
              ])),
      child: BottomAppBar(
        height: 60.h,
        color: Colors.transparent,
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: Image(
                  image: const AssetImage(
                    AppAssets.HOME_IMG,
                  ),
                  fit: BoxFit.fill,
                  height: 20.h,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 10.0.w),
                child: Image(
                  image: const AssetImage(AppAssets.SIGNALS_IMG),
                  height: 20.h,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 10.0.w),
                child: Image(
                    image: const AssetImage(AppAssets.SEARCH_IMG),
                    height: 20.h,
                    color: Colors.white),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 10.0.w),
                child: Image(
                  image: const AssetImage(AppAssets.PERSON_IMG),
                  height: 20.h,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
