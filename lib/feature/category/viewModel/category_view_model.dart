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
  List<String>? items = List.empty(growable: true);

  @observable
  bool isLoadingProduct = false;

  @observable
  int selectedIndex = 0;

  @action
  changeIndex(int index) {
    selectedIndex = index;
  }

  @action
  _getProductData() async {
    isLoadingProduct = false;
    productModel = (await iCategoryServices.getCategoryList()).data;
    for (var i = 0; i < productModel!.length; i++) {
      if (items!.contains(productModel?[i]?.category)) {
      } else {
        items?.add(productModel?[i]?.category ?? '');
      }
    }
    isLoadingProduct = true;
  }

  _onInit() {
    _getProductData();
  }
}
