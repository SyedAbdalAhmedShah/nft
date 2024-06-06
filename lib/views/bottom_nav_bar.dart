import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/constants/app_assets.dart';
import 'package:nft/constants/app_strings.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sliderImages = [
      AppAssets.MUSIC_SLIDER_IMG,
      AppAssets.ART_SLIDER_IMG,
      AppAssets.WRORLD_SLIDER_IMG
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.APP_NAME,
          style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 170.h),
            items: sliderImages.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.r),
                          image: DecorationImage(
                              image: AssetImage(i), fit: BoxFit.cover)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ));
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
