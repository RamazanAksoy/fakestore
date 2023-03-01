import '/feature/home/model/user.dart';

import '../../../core/base/model/IResponseModel.dart';

abstract class IHomeService {
  Future<IResponseModel<List<Post>?>> getPosts();
}
