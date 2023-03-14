import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../pages/about.dart';
import '../../pages/contact_us.dart';
import '../../pages/error_page.dart';
import '../../pages/home.dart';
import '../../pages/profile.dart';
import 'app_route_path_name.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: RouteNames.homeRoute,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: RouteNames.profileRoute,
          path: '/profile/:username/:userId',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: Profile(
                username: state.params['username']!,
                userId: state.params['userId']!,
              ),
            );
          },
        ),
        GoRoute(
          name: RouteNames.aboutRoute,
          path: '/about',
          pageBuilder: (context, state) {
            return const MaterialPage(child: About());
          },
        ),
        GoRoute(
          name: RouteNames.contactUsRoute,
          path: '/contact_us',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ContactUs());
          },
        )
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      },
      redirect: (context, state) {
        if (!isAuth &&
            state.location.startsWith('/${RouteNames.profileRoute}')) {
          return context.namedLocation(RouteNames.contactUsRoute);
        } else {
          return null;
        }
      },
    );
    return router;
  }
}
