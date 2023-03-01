import 'package:dio/dio.dart';
import '/core/constants/endpoints/end_points.dart';

import '../cache/locale_manager.dart';
import 'ICoreDio.dart';
import 'core_dio.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance = NetworkManager._init();
    return _instance;
  }

  ICoreDioNullSafety? coreDio;

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      headers: LocaleManager.instance.getStringValue('token') != ''
          ? {'authorization': LocaleManager.instance.getStringValue('token')}
          : {},
      baseUrl: EndPoints.baseUrl,
    );

    coreDio = CoreDio(baseOptions);
  }
}
