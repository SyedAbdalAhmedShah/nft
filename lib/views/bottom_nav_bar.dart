import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/utils/widgets/custom_bottom_navigation.dart';
import 'package:nft/views/home.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> pages = const [HomePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: pages.elementAt(0),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 2,
        ),
        bottomNavigationBar: AppBottomNavBar()
        //  BottomAppBar(
        //   color: Colors.transparent,
        //   padding: EdgeInsets.zero,
        //   elevation: 0,
        //   clipBehavior: Clip.antiAlias,
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        //     child: DecoratedBox(
          //       decoration: BoxDecoration(
          //           border: Border.all(color: Theme.of(context).colorScheme.secondary.withOpacity(0.2), width: 1.w),
          //           borderRadius: BorderRadius.circular(60.r),
          //           gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
          //             Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          //             const Color(0xff420C5B).withOpacity(0.4)
          //           ])),
        //       child: SizedBox(
        //         child: Row(
        //           mainAxisSize: MainAxisSize.max,
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: <Widget>[
        //             IconButton(
        //               icon: const Icon(Icons.home),
        //               onPressed: () {
        //                 setState(() {});
        //               },
        //             ),
        //             IconButton(
        //               icon: const Icon(Icons.search),
        //               onPressed: () {
        //                 setState(() {});
        //               },
        //             ),
        //             IconButton(
        //               icon: const Icon(Icons.favorite_border_outlined),
        //               onPressed: () {
        //                 setState(() {});
        //               },
        //             ),
        //             IconButton(
        //               icon: const Icon(Icons.account_circle_outlined),
        //               onPressed: () {
        //                 setState(() {});
        //               },
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        );
  }
}
