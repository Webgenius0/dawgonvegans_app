import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/colors.gen.dart';

class MembershipCheckCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const MembershipCheckCardWidget({
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
        color: AppColors.cFFFFFF,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 20.w,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image, width: 50.w, height: 50.h, fit: BoxFit.cover),

          Expanded(
            child: Text(
              title,
              style: TextFontStyle.textStyle16c202531ManropeW700,
            ),
          ),
        ],
      ),
    );
  }
}
