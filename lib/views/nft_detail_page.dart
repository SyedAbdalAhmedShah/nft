import 'package:flutter/material.dart';

class NftDetailPage extends StatelessWidget {
  final String imagePath;
  const NftDetailPage({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ColoredBox(color: Theme.of(context).colorScheme.primary),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePath))),
            ),
          ),
        ],
      ),
    );
  }
}
