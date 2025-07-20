import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:viewtrading/data/config/routing/route_names.dart';
import 'package:viewtrading/data/config/routing/route_path.dart';
import 'package:viewtrading/presentation/pages/loginscreen.dart';

import 'package:viewtrading/presentation/pages/splashscreen.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteNames.splashScreenName,
  routes: [
    GoRoute(
      path: RoutePath.splashScreenPath,

      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: Splashscreen(),
          transitionsBuilder: (context, animation, secondaryanimation, child) {
            if (Platform.isIOS) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(scale: animation, child: child),
              );
            } else {
              return Stack(
                children: [
                  FadeTransition(opacity: animation, child: child),
                  if (animation.value < 1.0)
                    const Center(child: CircularProgressIndicator()),
                ],
              );
            }
          },
        );
      },
    ),
    GoRoute(
      name: RouteNames.loginScreenName,
      path: RoutePath.loginScreenPath,
      builder: (context, state) => Loginscreen(),
    ),
  ],
);
