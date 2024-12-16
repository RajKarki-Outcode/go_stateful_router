import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_project/screens/another_page.dart';
import 'package:new_project/screens/dashboard_page.dart';
import 'package:new_project/screens/home_screen.dart';
import 'package:new_project/screens/inside_add_on_widget.dart';
import 'package:new_project/screens/inside_home_screen.dart';

enum RoutePaths {
  home,
  addAnother,
  insideHome,
  insideAnother,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter setUpRouter(GlobalKey<NavigatorState> navigatorKey) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/${RoutePaths.home.name}',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return DashboardPage(key: state.pageKey, child: navigationShell);
        },
        branches: <StatefulShellBranch>[
          // Home Tab Route
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: RoutePaths.home.name,
                path: '/${RoutePaths.home.name}',
                pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const HomeScreen()),
                routes: <RouteBase>[
                  GoRoute(
                    name: RoutePaths.insideHome.name,
                    path: '/${RoutePaths.insideHome.name}',
                    pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const InsideHomeScreen()),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: RoutePaths.addAnother.name,
                path: '/${RoutePaths.addAnother.name}',
                pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const AnotherPage()),
                routes: [
                  GoRoute(
                    name: RoutePaths.insideAnother.name,
                    path: '/${RoutePaths.insideAnother.name}',
                    pageBuilder: (context, state) => MaterialPage(key: state.pageKey, child: const InsideAddOnWidget()),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
