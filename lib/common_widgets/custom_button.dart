import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback? onPressed;
  final double? height;
  final BorderSide? side;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  const CustomButton({
    required this.buttonName,
    required this.onPressed,
    this.height,
    this.width,
    this.borderRadius,
    this.color,
    this.textStyle,
    this.padding,
    this.side,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        side: side ?? BorderSide(color: AppColors.c000000, width: 1.w),
        borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
      ),
      padding: padding ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      onPressed: onPressed,
      color: color ?? AppColors.c000000,
      minWidth: width ?? 1.sw,
      height: height ?? 50.h,
      child: Text(
        buttonName,
        style: textStyle ?? TextFontStyle.textStyle16c101820Nunitow800,
      ),
    );
  }
}
