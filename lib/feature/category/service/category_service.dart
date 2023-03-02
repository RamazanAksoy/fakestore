import 'package:fakestore/core/base/model/IResponseModel.dart';
import 'package:fakestore/feature/category/model/category_model.dart';
import 'package:fakestore/feature/category/service/ICategory_service.dart';

import '../../../core/constants/endpoints/end_points.dart';
import '../../../core/constants/enums/http_request_enum.dart';
import '../../../core/init/network/ICoreDio.dart';
import '../../../core/init/network/network_manager.dart';

class CategoryService extends ICategoryServices {
  ICoreDioNullSafety? networkManager = NetworkManager.instance!.coreDio;

  @override
  Future<IResponseModel<List<ProductModel?>>> getCategoryList(String? categoryName) async {
    final response = await networkManager!.send<List<ProductModel>, ProductModel>(
      EndPoints.getProductwithCategory + (categoryName ?? ''),
      parseModel: ProductModel(),
      type: HttpTypes.GET,
    );
    return response;
  }
}
