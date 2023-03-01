import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/themes/colors.dart';
import '../utils/box_decoration.dart';
import '../utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.backgroundColor = AppColors.themeColor,
      required this.onPressed,
      this.textColor = AppColors.white,
      this.width,
      this.height,
      this.textStyle});
  final String text;
  final Color textColor;
  final double? width;
  final double? height;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: height ?? 7.h,
        width: width ?? 100.w,
        decoration: customBoxDecoration(color: backgroundColor, borderRadius: 2.w),
        child: Center(
            child: Text(
          text,
          style: textStyle ?? Styles.largeBoldFontStyle(color: textColor),
        )),
      ),
    );
  }
}
