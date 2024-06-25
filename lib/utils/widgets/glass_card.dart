import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft/configs/style_config.dart';
import 'package:nft/utils/anim/fade_route.dart';
import 'package:nft/views/nft_detail_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GlassCard extends StatelessWidget {
  final String imagePath;
  const GlassCard({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(FadeRoute(
          page: NftDetailPage(
        imagePath: imagePath,
      ))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.dp),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            width: 180.w,
            padding: EdgeInsets.only(
                left: 10.w, right: 30.w, top: 10.h, bottom: 10.h),
            decoration: BoxDecoration(
                border: StyleConfig(context: context).linearBorder,
                gradient: StyleConfig(context: context).linearGradient2,
                borderRadius: BorderRadius.circular(20.dp)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.dp),
                      image: DecorationImage(
                          image: AssetImage(
                            imagePath,
                          ),
                          fit: BoxFit.fill)),
                ),
                Gap(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Abstract Art"),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 14.dp,
                          color: Colors.red,
                        ),
                        const Text("200"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
