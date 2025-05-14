import 'dart:ui';

import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/helpers/all_routes.dart';
import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/custom_button.dart';
import '../../../gen/colors.gen.dart';

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withValues(alpha: 0.2),
    builder:
        (_) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),

          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            title: Text(
              "Sign Out",
              textAlign: TextAlign.center,
              style: TextFontStyle.textStyle24c202531ManropeW600,
            ),
            content: Text(
              "Do you want to log out?",
              textAlign: TextAlign.center,
              style: TextFontStyle.textStyle14c878787ManropeW400,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: Row(
                  spacing: 15.w,
                  children: [
                    Expanded(
                      child: CustomButton(
                        side: BorderSide.none,
                        borderRadius: 30.r,
                        textStyle: TextFontStyle.textStyle14c0F0F0FManropeW500,
                        color: AppColors.cFFFFFF,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 10.h,
                        ),
                        buttonName: 'Cancel',
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        side: BorderSide.none,
                        buttonName: 'Log Out',
                        onPressed: () {
                          NavigationService.navigateToUntilReplacement(
                            Routes.loginScreen,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
  );
}
