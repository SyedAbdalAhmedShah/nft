import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nft/constants/app_strings.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.APP_NAME,
          style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70.r), topRight: Radius.circular(70.r)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: BottomAppBar(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            ),
          )),
    );
  }
}
