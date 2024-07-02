import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.isObscureText,
    this.contentPadding,
    this.inputTextStyle,
    this.backgroundColor,
  });
  final String hintText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? inputTextStyle;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              borderSide: const BorderSide(
                color: ColorsManager.lightGray,
                width: 1.3,
              ),
            ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
