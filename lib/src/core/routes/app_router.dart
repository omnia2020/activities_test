import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../screens/screens.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(page: HomeRoute.page, initial: true),
        CustomRoute(page: ActivityDetailsRoute.page),
        CustomRoute(page: ConfirmBookingRoute.page),
      ];
  Widget transition(context, animation, secondaryAnimation, child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {}

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {}

  @override
  void didPop(Route route, Route? previousRoute) {}
}
