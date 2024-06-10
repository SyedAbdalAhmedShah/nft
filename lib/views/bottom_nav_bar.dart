import 'package:flutter/material.dart';
import 'package:nft/notifier/bottom_nav_notifier.dart';

import 'package:nft/utils/widgets/custom_bottom_navigation.dart';
import 'package:nft/views/home.dart';
import 'package:nft/views/statistic.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final BottomNavNotifier navNotifier = BottomNavNotifier();
  List<Widget> pages = const [HomePage(), StatisticPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: ValueListenableBuilder<int>(
          valueListenable: navNotifier.count,
          builder: (context, value, child) => IndexedStack(
            index: value,
            children: pages,
          ),
        ),
        bottomNavigationBar: AppBottomNavBar(
          navNotifier: navNotifier,
        ));
  }
}
