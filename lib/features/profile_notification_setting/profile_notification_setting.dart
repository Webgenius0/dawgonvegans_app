import 'dart:developer';

import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/text_font_style.dart';

class ProfileNotificationSetting extends StatefulWidget {
  const ProfileNotificationSetting({super.key});

  @override
  State<ProfileNotificationSetting> createState() =>
      _ProfileNotificationSettingState();
}

class _ProfileNotificationSettingState
    extends State<ProfileNotificationSetting> {
  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    log(_controller.toString());
    return Scaffold(
      appBar: CustomAppBar(text: 'Notification'),
      body: Container(
        width: 1.sw,
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        padding: EdgeInsets.all(15.sp),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.w, color: AppColors.cEEEEEE),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Push notifications',
              style: TextFontStyle.textStyle16c00020AManropeW400.copyWith(
                color: AppColors.c00020A.withValues(alpha: 0.99),
              ),
            ),

            // Switch Controller
            AdvancedSwitch(
              controller: _controller,
              activeColor: AppColors.cFE8204,
              inactiveColor: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              width: 50.w,
              height: 30.h,
              enabled: true,
              disabledOpacity: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
