import 'package:flutter/material.dart';
import 'package:viewtrading/core/utils/asset_constants.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AssetConstants.ic_loading_animation),
      ),
    );
  }
}