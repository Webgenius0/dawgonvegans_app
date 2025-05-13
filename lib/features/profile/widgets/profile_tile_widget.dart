import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/text_font_style.dart';

class ProfileTileWidget extends StatelessWidget {
  final String icon;
  final String titleName;
  final VoidCallback onTap;
  const ProfileTileWidget({
    super.key,
    required this.icon,
    required this.titleName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only( top: 25.h),
        child: Row(
          children: [
            SvgPicture.asset(icon, width: 25.w, height: 25.h, fit: BoxFit.none),
            UIHelper.horizontalSpace(20.w),
            Text(titleName, style: TextFontStyle.textStyle18c00020AManropeW500),
            Spacer(),
            SvgPicture.asset(
              Assets.icons.arrowRight,
              width: 25.w,
              height: 25.h,
              fit: BoxFit.none,
            ),
          ],
        ),
      ),
    );
  }
}
