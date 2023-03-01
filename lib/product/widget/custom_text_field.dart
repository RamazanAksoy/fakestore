import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/services.dart';

import '../../core/constants/themes/colors.dart';
import '../utils/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.readOnly = false,
      this.suffixIcon,
      this.decoration = false,
      this.prefixIcon,
      this.height,
      this.isPassword = false,
      this.hintText,
      required this.textEditingController,
      this.inputFormatters,
      this.keyboardType,
      this.onChanged});
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isPassword;
  final double? height;
  final String? hintText;
  final Function(String)? onChanged;
  final bool decoration;
  final TextEditingController textEditingController;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: height ?? 8.h,
      width: 100.w,
      child: TextField(
        showCursor: !readOnly,
        readOnly: readOnly,
        onChanged: onChanged,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        style: Styles.normalFontStyle(),
        textAlign: TextAlign.start,
        obscureText: isPassword,
        controller: textEditingController,
        decoration: decoration
            ? InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.w),
                  borderSide: BorderSide(color: AppColors.grey.shade300), //This is Ignored
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3.w),
                  borderSide: const BorderSide(color: AppColors.grey), //This is Ignored
                ),
                prefixIcon: prefixIcon,
                suffix: suffixIcon,
                hintText: hintText)
            : InputDecoration(prefixIcon: prefixIcon, suffix: suffixIcon, hintText: hintText),
      ),
    );
  }
}
