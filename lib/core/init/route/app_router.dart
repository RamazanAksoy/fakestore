import 'package:auto_route/auto_route.dart';
import 'package:fakestore/feature/category/view/category_view.dart';
import 'package:flutter/material.dart';

import '../../../feature/login/view/login_screen.dart';
import '../../../feature/register/view/register_screen.dart';
import '../../../product/widget/bottom_navigation_bar.dart';
import '/core/constants/routes/navigation_constants.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, path: Routes.LOGIN, initial: true),
    AutoRoute(page: CategoryView, path: Routes.CATEGORY),
    AutoRoute(page: RegisterView, path: Routes.REGISTER),
    AutoRoute(page: TabbarView, path: Routes.TABBAR),
  ],
)
class AppRouter extends _$AppRouter {}
