import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/colors.gen.dart';

class ContactTileWidget extends StatelessWidget {
  final String icon;
  final String title;
  final GestureTapCallback onTap;
  const ContactTileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        width: 1.sw,
        padding: EdgeInsets.all(20.w),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.w, color: AppColors.cEEEEEE),
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),

        child: Row(
          spacing: 15.w,
          children: [
            SvgPicture.asset(icon, width: 25.w, height: 25.h, fit: BoxFit.none),
            Text(title, style: TextFontStyle.textStyle18c00020AManropeW600),
          ],
        ),
      ),
    );
  }
}
