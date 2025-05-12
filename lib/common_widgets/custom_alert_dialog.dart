import 'dart:ui';

import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';
import '../helpers/ui_helpers.dart';
import 'custom_button.dart'; // For ImageFilter

Future<void> showCustomDialog({
  required BuildContext context,
  String? icon,
  String? title,
  String? subTitle,
  String? buttonText,
  required VoidCallback onPressed,
  TextStyle? titleTextStyle,
  TextStyle? subTitleTextStyle,
}) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: '',
    pageBuilder: (context, animation, secondaryAnimation) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Dialog(
          backgroundColor: Colors.transparent,
       //   insetPadding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            decoration: ShapeDecoration(
              color: AppColors.cFFFFFF,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.r),
              ),
              /*  shadows: [
                BoxShadow(
                  color: const Color(0x0C000000),
                  blurRadius: 13.r,
                  offset: Offset(-3.w, 7.r),
                ),
              ], */
            ),
           // padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UIHelper.verticalSpaceMediumLarge,

                SvgPicture.asset(
                  icon ?? Assets.icons.superClub,
                  fit: BoxFit.none,
                  width: 115.w,
                  height: 120.h,
                ),

                UIHelper.verticalSpace(15.h),
                Text(
                  title ?? "Title Here",
                  textAlign: TextAlign.center,
                  style:
                      titleTextStyle ??
                      TextFontStyle.textStyle24cFE8204ManropeW600,
                ),

                UIHelper.verticalSpace(15.h),
                Text(
                  subTitle ?? "Sub Title Here",
                  style:
                      subTitleTextStyle ??
                      TextFontStyle.textStyle16c00020AManropeW400.copyWith(
                        color: AppColors.c00020A.withAlpha(252), // 0.99 * 255
                      ),
                  textAlign: TextAlign.center,
                ),

                UIHelper.verticalSpace(15.h),
                CustomButton(
                  buttonName: buttonText ?? "Button",
                  onPressed: onPressed,
                  color: AppColors.cFE8204,
                  side: BorderSide.none,
                  width: 125.w,
                  textStyle: TextFontStyle.textStyle14cFFFFFFManropeW600,
                  borderRadius: 100.r,
                ),

                UIHelper.verticalSpace(20.h),
              ],
            ),
          ),
        ),
      );
    },
  );
}
