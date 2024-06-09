import 'package:flutter/material.dart';

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
        body: IndexedStack(index: 0, children: pages),
        bottomNavigationBar: const AppBottomNavBar());
  }
}
