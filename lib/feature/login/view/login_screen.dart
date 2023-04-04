// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:fakestore/core/constants/routes/navigation_constants.dart';
import 'package:fakestore/feature/login/viewModel/login_view_model.dart';
import 'package:flutter/material.dart';

import '../../../product/widget/custom_form_button.dart';
import '../../../product/widget/custom_input_field.dart';
import '../../../product/widget/page_header.dart';
import '../../../product/widget/page_heading.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  LoginViewModel loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF1F3),
        body: Column(
          children: [
            const PageHeader(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: loginViewModel.loginFormKey,
                    child: Column(
                      children: [
                        const PageHeading(
                          title: 'Log-in',
                        ),
                        buildInputEmail(),
                        const SizedBox(
                          height: 16,
                        ),
                        buildInputPass(),
                        const SizedBox(
                          height: 16,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomFormButton(
                          innerText: 'Login',
                          onPressed: () {
                            loginViewModel.loginUser(context);
                          },
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Don\'t have an account ? ',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff939393),
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () => context.navigateNamedTo(Routes.REGISTER),
                                child: const Text(
                                  'Sign-up',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff748288),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CustomInputField buildInputPass() {
    return CustomInputField(
      controller: loginViewModel.textEditingControllerPass,
      labelText: 'Password',
      hintText: 'Your password',
      obscureText: true,
      suffixIcon: true,
      validator: (textValue) {
        if (textValue == null || textValue.isEmpty) {
          return 'Password is required!';
        }
        return null;
      },
    );
  }

  CustomInputField buildInputEmail() {
    return CustomInputField(
        controller: loginViewModel.textEditingControllerEmail,
        labelText: 'Email',
        hintText: 'Your email id',
        validator: (textValue) {
          if (textValue == null || textValue.isEmpty) {
            return 'Email is required!';
          }

          return null;
        });
  }
}
