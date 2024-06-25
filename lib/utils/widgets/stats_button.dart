import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft/constants/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StatsButton extends StatelessWidget {
  final String buttonName;
  final IconData leadingIcon;
  const StatsButton({
    required this.buttonName,
    required this.leadingIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
          color: AppColorss.PRIMARY_COLOR,
          borderRadius: BorderRadius.circular(30.dp),
          border: Border.all(color: AppColorss.BACKGROUND_2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            leadingIcon,
            color: Colors.grey.shade500,
          ),
          Gap(5.w),
          Text(buttonName),
          Gap(5.w),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey.shade500,
          )
        ],
      ),
    );
  }
}
