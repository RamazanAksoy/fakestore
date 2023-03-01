import 'package:fakestore/feature/login/service/Ilogin_service.dart';
import 'package:fakestore/feature/login/service/login_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'register_view_model.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store {
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPass = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  ILoginService loginService = LoginService();

/*   void loginUser(BuildContext context) async {
    if (loginFormKey.currentState!.validate()) {
      resToken = (await loginService.login(ReqUser(
          username: textEditingControllerEmail.text, password: textEditingControllerPass.text)));
      resToken?.error == null
          ? ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Giriş başarılı')),
            )
          : ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Kullanıcı adı veya şifre hatalı')),
            );
    }
  } */
}
