import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../../feature/login/view/login_screen.dart';
import '../../../feature/register/view/register_screen.dart';
import '/core/constants/routes/navigation_constants.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, path: Routes.LOGIN, initial: true),
    AutoRoute(page: RegisterView, path: Routes.REGISTER, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
