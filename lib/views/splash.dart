import 'package:flutter/material.dart';
import 'package:nft/constants/app_assets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.IMAGE_PATH))),
      child: Scaffold(
        body: Column(),
      ),
    );
  }
}
