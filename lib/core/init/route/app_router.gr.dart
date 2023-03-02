// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(orElse: () => const CategoryRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CategoryView(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: LoginView(key: args.key),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(orElse: () => const RegisterRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: RegisterView(key: args.key),
      );
    },
    TabbarRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const TabbarView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'category',
          fullMatch: true,
        ),
        RouteConfig(
          CategoryRoute.name,
          path: 'category',
        ),
        RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        RouteConfig(
          RegisterRoute.name,
          path: 'register',
        ),
        RouteConfig(
          TabbarRoute.name,
          path: 'tabbar',
        ),
      ];
}

/// generated route for
/// [CategoryView]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({Key? key})
      : super(
          CategoryRoute.name,
          path: 'category',
          args: CategoryRouteArgs(key: key),
        );

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key})
      : super(
          LoginRoute.name,
          path: 'login',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RegisterView]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({Key? key})
      : super(
          RegisterRoute.name,
          path: 'register',
          args: RegisterRouteArgs(key: key),
        );

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [TabbarView]
class TabbarRoute extends PageRouteInfo<void> {
  const TabbarRoute()
      : super(
          TabbarRoute.name,
          path: 'tabbar',
        );

  static const String name = 'TabbarRoute';
}
