/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pafcosta/constants/text_font_style.dart';

import '../gen/colors.gen.dart';

class CustomExpandsionTileWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const CustomExpandsionTileWidget({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.r),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        collapsedBackgroundColor: AppColors.cFFFFFF,
        backgroundColor: AppColors.cFFFFFF,
        collapsedIconColor: AppColors.c000000,
        collapsedShape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
        title: Text(title, style: TextFontStyle.textStyle16c101820NunitoW700),
        children: children,
      ),
    );
  }
}
 */