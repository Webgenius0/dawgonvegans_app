import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/text_font_style.dart';

import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../helpers/ui_helpers.dart';
import 'custom_button.dart';

Future<void> showCustomDialog({
  required BuildContext context,
  String? icon,
  String? title,
  String? subTitle,
  String? button1Text,
  TextStyle? titleTextStyle,
  TextStyle? subTitleTextStyle,
  String? button2Text,
  VoidCallback? button1Action,
  VoidCallback? button2Action,
  TextAlign? titleAlign,
  TextAlign? subTitleAlign,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: Container(
            decoration: ShapeDecoration(
              color: AppColors.cFFFFFF,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
              shadows: [
                BoxShadow(
                  color: const Color(0x0C000000),
                  blurRadius: 13.r,
                  offset: Offset(-3.w, 7.r),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UIHelper.verticalSpaceMediumLarge,

                // Icon
                SvgPicture.asset(
                  icon ?? Assets.icons.arrowDown,
                  fit: BoxFit.none,
                  width: 40.w,
                  height: 40.h,
                ),

                // Title
                UIHelper.verticalSpace(5.h),
                Text(
                  title ?? "Title Here",
                  textAlign: titleAlign,
                  style:
                      titleTextStyle ??
                      TextFontStyle.textStyle24cF1C400NunitoW700,
                ),

                // SubTitle
                UIHelper.verticalSpace(8.h),
                Text(
                  subTitle ?? "Sub Title Here",
                  style:
                      subTitleTextStyle ??
                      TextFontStyle.textStyle15c101820NunitoW400,
                  textAlign: subTitleAlign,
                ),

                // Conditional Spacing if buttons exist
                if (button1Text != null ||
                    button1Action != null ||
                    button2Text != null ||
                    button2Action != null)
                  UIHelper.verticalSpace(20.h),

                // Button 1 (optional)
                if (button1Text != null || button1Action != null)
                  CustomButton(
                    buttonName: button1Text ?? "Button 1",
                    onPressed: button1Action,
                    color: AppColors.cF1C400,
                    side: BorderSide.none,
                    textStyle: TextFontStyle.textStyle16c101820Nunitow800,
                    borderRadius: 14.r,
                  ),

                // Spacing between buttons (only if both exist)
                if ((button1Text != null || button1Action != null) &&
                    (button2Text != null || button2Action != null))
                  UIHelper.verticalSpace(10.h),

                // Button 2 (optional)
                if (button2Text != null || button2Action != null)
                  CustomButton(
                    buttonName: button2Text ?? "Button 2",
                    onPressed: button2Action,
                    color: AppColors.cF1C400,
                    side: BorderSide.none,
                    textStyle: TextFontStyle.textStyle16c101820Nunitow800,
                    borderRadius: 14.r,
                  ),

                // Bottom Spacing if buttons exist
                if (button1Text != null ||
                    button1Action != null ||
                    button2Text != null ||
                    button2Action != null)
                  UIHelper.verticalSpace(30.h),
              ],
            ),
          ),
        ),
  );
}
