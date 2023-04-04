// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/image/images.dart';
import '../utils/box_decoration.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key, this.leftIcon, this.title, this.rightIcon});

  Widget? leftIcon;
  Widget? title;
  Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        margin: EdgeInsets.only(bottom: 0.25.h),
        height: 7.h,
        decoration: customBoxDecoration(hasShadow: true),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leftIcon ??
                IconButton(
                    onPressed: () {
                      context.popRoute();
                    },
                    icon: Image.asset(AppImages.instance.backButton,
                        height: 1.5.h, color: Colors.black87)),
            title ?? const Text(""),
            rightIcon ??
                Container(
                  width: 10.w,
                ),
          ],
        ),
      ),
    );
  }
}
