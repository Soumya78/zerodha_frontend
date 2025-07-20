import 'package:flutter/material.dart';
import 'package:viewtrading/core/utils/asset_constants.dart';
import 'package:viewtrading/data/config/routing/route_definations.dart';
import 'package:viewtrading/data/config/routing/route_path.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
     RouterHelper.instance.go(context, RoutePath.loginScreenPath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AssetConstants.ic_loading_animation),
      ),
    );
  }
}