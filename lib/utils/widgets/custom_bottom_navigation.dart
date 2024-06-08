import 'package:flutter/material.dart';
import 'package:nft/constants/app_assets.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.amber,
      notchMargin: 10,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(15.0),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: const AssetImage(AppAssets.HOME_IMG),
                height: 30,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(15.0),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: const AssetImage(AppAssets.SIGNALS_IMG),
                height: 30,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(15.0),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: const AssetImage(AppAssets.SEARCH_IMG),
                  height: 30,
                  color: Colors.white),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(15.0),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: const AssetImage(AppAssets.PERSON_IMG),
                height: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
