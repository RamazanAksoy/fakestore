import 'package:mobx/mobx.dart';

import '../model/user.dart';
import '../service/Ihome_service.dart';
import '../service/home_service.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  _HomeViewModelBase() {
    onInit();
  }
  IHomeService homeService = HomeService();
  List<Post>? post;

  @observable
  bool isLoading = true;

  @action
  void onInit() {
    getdata();
  }

  @action
  void loadingChange() {
    isLoading = !isLoading;
  }

  @action
  getdata() async {
    loadingChange();
    post = (await homeService.getPosts()).data;
    loadingChange();
  }
}
