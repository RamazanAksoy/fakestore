import 'package:auto_route/auto_route.dart';
import 'package:fakestore/feature/category/view/category_view.dart';
import 'package:flutter/cupertino.dart';
import '/core/constants/routes/navigation_constants.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CategoryView, path: Routes.CATEGORY, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
