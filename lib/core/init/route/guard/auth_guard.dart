import 'package:auto_route/auto_route.dart';
import 'package:fakestore/core/constants/routes/navigation_constants.dart';
import 'package:fakestore/core/init/cache/locale_manager.dart';

class AuthGuard extends AutoRouteGuard {

  LocaleManager localeManager = LocaleManager.instance;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {

    if (localeManager.getBoolValue("isFirst")==false) {
      resolver.next(true);
    } else {
      router.navigateNamed(Routes.TABBAR);
    }
     print('as');
  }
}