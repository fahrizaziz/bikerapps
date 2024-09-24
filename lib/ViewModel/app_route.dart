import 'package:bikerapps/View/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../View/error_view.dart';

class AppRoute {
  final GoRouter router;
  AppRoute()
      : router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          debugLogDiagnostics: true,
          errorBuilder: (context, state) {
            return ErrorView(
              error: state.error,
            );
          },
          initialLocation: '/home',
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeView(),
            ),
          ],
        );
}
