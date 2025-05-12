import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class FoodCardWidget extends StatelessWidget {
  final String image;
  final String foodName;
  final String foodStatus;
  final String foodDescription;
  final String totalLikes;
  final String totalComments;
  final String times;

  const FoodCardWidget({
    super.key,
    required this.image,
    required this.foodName,
    required this.foodStatus,
    required this.foodDescription,
    required this.totalLikes,
    required this.totalComments,
    required this.times,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cFFFFFF,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image assets
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
            child: Image.asset(
              image,
              width: 1.sw,
              height: 200.h,
              fit: BoxFit.cover,
            ),
          ),

          UIHelper.verticalSpace(15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Food Name
                  Text(
                    foodName,
                    style: TextFontStyle.textStyle18c333333ManropeW700,
                  ),

                  // Food Status
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 5.h,
                    ),
                    decoration: ShapeDecoration(
                      color: AppColors.c666666,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      foodStatus,
                      style: TextFontStyle.textStyle12cFFFFFFManropeW300,
                    ),
                  ),
                ],
              ),

              // Favorite Icon
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.cF5F5F5,
                ),
                child: SvgPicture.asset(
                  Assets.icons.love,
                  width: 25.w,
                  height: 25.h,
                  fit: BoxFit.none,
                ),
              ),
            ],
          ),

          // Food Description
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Text(
              foodDescription,
              style: TextFontStyle.textStyle14c666666ManropeW400,
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 5.w,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Likes
                    SvgPicture.asset(
                      Assets.icons.like,
                      width: 15.w,
                      height: 15.h,
                      fit: BoxFit.none,
                    ),
                    Text(
                      totalLikes,
                      style: TextFontStyle.textStyle14c333333ManropeW400,
                    ),
                  ],
                ),

                // Comments
                Row(
                  spacing: 5.w,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Assets.icons.comments,
                      width: 15.w,
                      height: 15.h,
                      fit: BoxFit.none,
                    ),
                    Text(
                      totalComments,
                      style: TextFontStyle.textStyle14c333333ManropeW400,
                    ),
                  ],
                ),

                // TIme
                Text(times, style: TextFontStyle.textStyle14c333333ManropeW400),
              ],
            ),
          ),

          UIHelper.verticalSpace(20.h),
        ],
      ),
    );
  }
}
