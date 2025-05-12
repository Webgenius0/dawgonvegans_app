import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../gen/colors.gen.dart';

class FeedCardWidget extends StatelessWidget {
  final String name;
  final String points;
  final String level;
  final String memberType;

  const FeedCardWidget({
    super.key,
    required this.name,
    required this.points,
    required this.level,
    required this.memberType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.all(20.sp),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, 0.50),
          end: Alignment(1.00, 0.50),
          colors: [const Color(0xFFFF8202), const Color(0xFFFF6B00)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hi, $name 👋',
                style: TextFontStyle.textStyle24cfffffffManropeW700,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                decoration: ShapeDecoration(
                  color: AppColors.cFF7401.withValues(alpha: 229),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                child: Text(
                  'VIP',
                  style: TextFontStyle.textStyle12c202531ManropeW600.copyWith(
                    color: AppColors.cFF8204,
                  ),
                ),
              ),
            ],
          ),

          UIHelper.verticalSpace(10.h),

          Text(
            '$points points  |  Level $level',
            style: TextFontStyle.textStyle14cFFFFFFManropeW600.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          UIHelper.verticalSpace(20.h),
          Container(
            width: double.infinity,

            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            decoration: ShapeDecoration(
              color: AppColors.cFF831A,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),

            child: Column(
              spacing: 10.h,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next Level',
                      style: TextFontStyle.textStyle14cfffffffManropeW500,
                    ),

                    Text(
                      '550 points to go',
                      style: TextFontStyle.textStyle14cfffffffManropeW500,
                    ),
                  ],
                ),

                LinearProgressBar(
                  maxSteps: 1000,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: 550,
                  progressColor: AppColors.cFFFFFF,
                  backgroundColor: AppColors.cFF9948,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
