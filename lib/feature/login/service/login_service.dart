import 'package:fakestore/feature/login/model/req_user.dart';
import 'package:fakestore/feature/login/model/res_token.dart';
import '../../../core/base/model/IResponseModel.dart';
import '../../../core/constants/endpoints/end_points.dart';
import '../../../core/constants/enums/http_request_enum.dart';
import '../../../core/init/network/ICoreDio.dart';
import '../../../core/init/network/network_manager.dart';
import 'Ilogin_service.dart';

class LoginService extends ILoginService {
  ICoreDioNullSafety? networkManager = NetworkManager.instance!.coreDio;

  @override
  Future<IResponseModel<ResToken?>> login(ReqUser reqUser) async {
    final response = await networkManager!.send<ResToken, ResToken>(
      EndPoints.login,
      parseModel: ResToken(),
      data: reqUser.toJson(),
      type: HttpTypes.POST,
    );
    return response;
  }
}
