import '/core/constants/endpoints/end_points.dart';
import '/feature/home/model/user.dart';
import '/feature/home/service/Ihome_service.dart';

import '../../../core/base/model/IResponseModel.dart';
import '../../../core/constants/enums/http_request_enum.dart';
import '../../../core/init/network/ICoreDio.dart';
import '../../../core/init/network/network_manager.dart';

class HomeService extends IHomeService {
  ICoreDioNullSafety? networkManager = NetworkManager.instance!.coreDio;

  @override
  Future<IResponseModel<List<Post>?>> getPosts() async {
    final response = await networkManager!.send<List<Post>, Post>(
      EndPoints.getPosts,
      parseModel: Post(),
      type: HttpTypes.GET,
    );
    return response;
  }
}
