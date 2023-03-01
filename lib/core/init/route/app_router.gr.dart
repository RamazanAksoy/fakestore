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
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CategoryView(key: args.key),
      );
    }
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
