// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:fakestore/core/constants/routes/navigation_constants.dart';
import 'package:fakestore/core/init/cache/locale_manager.dart';
import 'package:fakestore/feature/login/model/req_user.dart';
import 'package:fakestore/feature/login/service/Ilogin_service.dart';
import 'package:fakestore/feature/login/service/login_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/model/IResponseModel.dart';
import '../model/res_token.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPass = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  ILoginService loginService = LoginService();
  IResponseModel<ResToken?>? resToken;
  LocaleManager localeManager = LocaleManager.instance;

  bool isFirstLogin = false;

  void loginUser(BuildContext context) async {
    if (loginFormKey.currentState!.validate()) {
      resToken = (await loginService.login(ReqUser(
          username: textEditingControllerEmail.text, password: textEditingControllerPass.text)));
      resToken?.error == null
          ? {
              context.router.replaceNamed(Routes.TABBAR),
              isFirstLogin = true,
              localeManager.setBoolValue("isFirst", isFirstLogin)
            }
          : ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Kullanıcı adı veya şifre hatalı')),
            );
    }
  }
}
