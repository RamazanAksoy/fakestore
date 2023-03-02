// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoryViewModel on _CategoryViewModelBase, Store {
  late final _$isLoadingProductAtom =
      Atom(name: '_CategoryViewModelBase.isLoadingProduct', context: context);

  @override
  bool get isLoadingProduct {
    _$isLoadingProductAtom.reportRead();
    return super.isLoadingProduct;
  }

  @override
  set isLoadingProduct(bool value) {
    _$isLoadingProductAtom.reportWrite(value, super.isLoadingProduct, () {
      super.isLoadingProduct = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_CategoryViewModelBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$_getProductDataAsyncAction =
      AsyncAction('_CategoryViewModelBase._getProductData', context: context);

  @override
  Future _getProductData(String categoryName) {
    return _$_getProductDataAsyncAction
        .run(() => super._getProductData(categoryName));
  }

  late final _$_CategoryViewModelBaseActionController =
      ActionController(name: '_CategoryViewModelBase', context: context);

  @override
  dynamic changeIndex(int index) {
    final _$actionInfo = _$_CategoryViewModelBaseActionController.startAction(
        name: '_CategoryViewModelBase.changeIndex');
    try {
      return super.changeIndex(index);
    } finally {
      _$_CategoryViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoadingProduct: ${isLoadingProduct},
selectedIndex: ${selectedIndex}
    ''';
  }
}
