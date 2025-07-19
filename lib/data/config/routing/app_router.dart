import 'package:go_router/go_router.dart';
import 'package:viewtrading/data/config/routing/route_names.dart';
import 'package:viewtrading/data/config/routing/route_path.dart';
import 'package:viewtrading/presentation/pages/splashscreen.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteNames.splashScreenName,
  routes: [
    GoRoute(
      path: RoutePath.splashScreenPath,
      builder: (context, state) => const Splashscreen(),
    ),
  ],
);