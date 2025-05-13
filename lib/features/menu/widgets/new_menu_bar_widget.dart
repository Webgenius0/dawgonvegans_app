import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class NewMenuBarWidget extends StatelessWidget {
  final String image;
  final String foodName;
  final String foodDiscount;
  final String foodAmount;
  final String foodLeaveAmount;
  final String foodDescription;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const NewMenuBarWidget({
    super.key,
    required this.image,
    required this.foodName,
    required this.foodDiscount,
    required this.foodDescription,
    required this.isFavorite,
    required this.foodLeaveAmount,
    required this.onFavoriteToggle,
    required this.foodAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.r),
          bottomRight: Radius.circular(15.r),
        ),
      ),

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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                    // Food Discount Offer
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 5.h,
                      ),
                      decoration: ShapeDecoration(
                        color: AppColors.cFE8204,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        foodDiscount,
                        style: TextFontStyle.textStyle12cFFFFFFManropeW300,
                      ),
                    ),
                  ],
                ),

                // Favorite Icon
                InkWell(
                  onTap: onFavoriteToggle,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.cF5F5F5,
                    ),
                    child: SvgPicture.asset(
                      Assets.icons.love,
                      width: 25.w,
                      height: 25.h,
                      fit: BoxFit.none,
                      colorFilter: ColorFilter.mode(
                        isFavorite ? AppColors.cFF0000 : AppColors.c666666,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Food Amount || Foood Leave Amount
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 5.w),
                child: Text(
                  foodAmount,
                  style: TextFontStyle.textStyle18cFE8204ManropeW700,
                ),
              ),

              Text(
                foodLeaveAmount,
                style: TextFontStyle.textStyle12cFE8204ManropeW500.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),

          // Food Description
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Text(
              foodDescription,
              style: TextFontStyle.textStyle14c666666ManropeW400,
            ),
          ),

          UIHelper.verticalSpace(20.h),
        ],
      ),
    );
  }
}
