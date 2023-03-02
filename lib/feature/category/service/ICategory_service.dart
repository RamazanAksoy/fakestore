import 'package:fakestore/core/base/model/IResponseModel.dart';
import 'package:fakestore/feature/category/model/category_model.dart';

abstract class ICategoryServices {
  Future<IResponseModel<List<ProductModel?>>> getCategoryList(String? categoryName);
}
