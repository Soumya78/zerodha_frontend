import 'package:go_router/go_router.dart';
import 'package:viewtrading/data/config/routing/route_names.dart';
import 'package:viewtrading/data/config/routing/route_path.dart';
import 'package:viewtrading/presentation/pages/splashscreen.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteNames.splashScreen,
  routes: [
    GoRoute(
      path: RoutePath.splashScreen,
      builder: (context, state) => const Splashscreen(),
    ),
  ],
);