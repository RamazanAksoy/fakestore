// ignore_for_file: file_names

import 'package:fakestore/feature/login/model/res_token.dart';

import '../../../core/base/model/IResponseModel.dart';
import '../model/req_user.dart';

abstract class ILoginService {
  Future<IResponseModel<ResToken?>> login(ReqUser reqUser);
}
