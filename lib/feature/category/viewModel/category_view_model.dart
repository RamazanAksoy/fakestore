import 'package:fakestore/feature/category/model/category_model.dart';
import 'package:mobx/mobx.dart';

import '../service/ICategory_service.dart';
import '../service/category_service.dart';
part 'category_view_model.g.dart';

class CategoryViewModel = _CategoryViewModelBase with _$CategoryViewModel;

abstract class _CategoryViewModelBase with Store {
  _CategoryViewModelBase() {
    _onInit();
  }

  ICategoryServices iCategoryServices = CategoryService();
  List<ProductModel?>? productModel;
  List<String>? items = ["electronics", "jewelery", "men's clothing", "women's clothing"];

  @observable
  bool isLoadingProduct = false;

  @observable
  int selectedIndex = 0;

  @action
  changeIndex(int index) {
    selectedIndex = index;
    _getProductData(items?[index] ?? '');
  }

  @action
  _getProductData(String categoryName) async {
    isLoadingProduct = false;
    productModel = (await iCategoryServices.getCategoryList(categoryName)).data;
    isLoadingProduct = true;
  }

  _onInit() {
    _getProductData(items?[0] ?? '');
  }
}
