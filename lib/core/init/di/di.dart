import 'package:easy_localization/easy_localization.dart';

import '/core/constants/image/images.dart';
import '/core/init/cache/locale_manager.dart';

import '../network/network_manager.dart';

class DependencyInjection {
  static init() async {
    AppImages.instance;
    await Future.wait([
      EasyLocalization.ensureInitialized(),
      LocaleManager.prefrencesInit(),
    ]);
    NetworkManager.instance!.coreDio;
  }
}
