import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../../feature/home/view/home_screen.dart';
import '/core/constants/routes/navigation_constants.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: Routes.HOME, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
