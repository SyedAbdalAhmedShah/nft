import 'dart:ui'; 

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/constants/app_strings.dart';
import 'package:nft/models/slider_model.dart';
import 'package:nft/constants/app_assets.dart';

class Slider extends StatelessWidget {
  const Slider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SliderModel> sliderImages = [
      SliderModel(
          imagePath: AppAssets.MUSIC_SLIDER_IMG, name: AppStrings.MUSIC),
      SliderModel(imagePath: AppAssets.ART_SLIDER_IMG, name: AppStrings.ART),
      SliderModel(
          imagePath: AppAssets.WRORLD_SLIDER_IMG,
          name: AppStrings.VIRTUAL_WORLD),
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 170.h,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: sliderImages.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                    image: DecorationImage(
                        image: AssetImage(i.imagePath), fit: BoxFit.cover)),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            i.name,
                            style: TextStyle(
                                fontSize: 20.0.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}
