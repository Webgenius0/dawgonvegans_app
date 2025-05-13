import 'package:dawgonvegans/common_widgets/custom_button.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/colors.gen.dart';

class EventListWidget extends StatelessWidget {
  final String image;
  final String foodName;
  final String hostName;
  final String time;
  final String platForm;

  const EventListWidget({
    super.key,
    required this.image,
    required this.foodName,
    required this.hostName,
    required this.time,
    required this.platForm,
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

          // Food Name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Text(
              foodName,
              style: TextFontStyle.textStyle18c333333ManropeW700,
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Text(
              hostName,
              style: TextFontStyle.textStyle14c666666ManropeW300,
            ),
          ),

// Time
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(spacing: 5.w,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(Assets.icons.clock,fit: BoxFit.cover),
                Text(
                  time,
                  style: TextFontStyle.textStyle14c666666ManropeW300,
                ),
              ],
            ),
          ),

          // PlatForm
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(spacing: 5.w,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(Assets.icons.video,fit: BoxFit.cover,),
                Text(
                  platForm,
                  style: TextFontStyle.textStyle14c666666ManropeW300,
                ),
              ],
            ),
          ),

          // button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: CustomButton(buttonName: 'Join Event', onPressed: () {},textStyle: TextFontStyle.textStyle14c00020AManropeW700,
            side: BorderSide.none,
            ),
          ),
          
        ],
      ),
    );
  }
}
