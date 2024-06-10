import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nft/constants/app_assets.dart';
import 'package:nft/constants/app_colors.dart';

class NftDetailPage extends StatelessWidget {
  final String imagePath;
  const NftDetailPage({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.cancel))),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: Text(
                      "Luppy Club",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Gap(5.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(AppAssets.NFT_1),
                        ),
                        Text("Alex.S")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.fill,
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColorss.BACKGROUND_2,
                          child: Icon(
                            Icons.qr_code_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: AppColorss.BACKGROUND_2,
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                            Gap(10.w),
                            Chip(
                              backgroundColor: AppColorss.BACKGROUND_2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                  side: const BorderSide(
                                      color: Colors.transparent)),
                              label: const Text("200"),
                              avatar: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                            Gap(10.w),
                            const CircleAvatar(
                              backgroundColor: AppColorss.BACKGROUND_2,
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
