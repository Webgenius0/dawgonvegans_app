import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/colors.gen.dart';

class MenuBarCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const MenuBarCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        color: AppColors.cFF6F01,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 10.w,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              color: AppColors.cFFFFFF,
            ),
            child: Image.asset(image, width: 30.w, height: 30.h),
          ),
          Expanded(
            child: Column(
              spacing: 5.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: TextFontStyle.textStyle16cFFFFFFManropeW700),
                Text(
                  subtitle,
                  style: TextFontStyle.textStyle14cFFFFFFManropeW400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
