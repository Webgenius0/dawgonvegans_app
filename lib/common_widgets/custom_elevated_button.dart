/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:georgerazouki/gen/colors.gen.dart';



class CustomElevatedButton extends StatelessWidget {
  final String? buttonTitle;
  final Widget? child;
  final double? borderRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonBorderColor;
  final bool isButtonBorderUsed;
  final Color? buttonColor;
  final TextStyle? textStyle;

  final void Function()? onTap;

  const CustomElevatedButton(
      {super.key,
      this.buttonTitle,
      this.child,
      this.borderRadius,
      this.buttonHeight,
      this.buttonWidth,
      this.buttonBorderColor,
      this.isButtonBorderUsed = false,
      this.onTap,
      this.buttonColor,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight ?? 50.h,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.c201d1d,
          border: isButtonBorderUsed
              ? Border.all(
                  color: buttonBorderColor ?? AppColors.c201d1d, width: 1.sp)
              : null,
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
        ),
        child: Center(
          child: child ??
              Text(
                buttonTitle ?? "",
               // style:
                 //   textStyle ?? TextFontStyle.headline16w600c000000StyleInter,
              ),
        ),
      ),
    );
  }
}
 */
