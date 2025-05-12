import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/colors.gen.dart';

class MembershipTileWidget extends StatelessWidget {
  final String titleName;
  const MembershipTileWidget({super.key, required this.titleName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: Row(
        spacing: 10.w,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.icons.check, width: 20.w, height: 20.h),
          Text(
            titleName,
            style: TextFontStyle.textStyle14c202531ManropeW500.copyWith(
              color: AppColors.c202531.withValues(alpha: 0.99),
            ),
          ),
        ],
      ),
    );
  }
}
