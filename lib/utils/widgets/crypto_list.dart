import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/constants/app_colors.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColorss.BACKGROUND_2, width: 1.6.w)),
      child: Column(),
    );
  }
}
