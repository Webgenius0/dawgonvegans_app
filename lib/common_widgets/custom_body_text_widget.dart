import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../helpers/ui_helpers.dart';

class CustomBodyTextWidget extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  const CustomBodyTextWidget({
    super.key,
    required this.titleText,
    required this.subTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UIHelper.verticalSpace(10.h),
        Text(titleText, style: TextFontStyle.textStyle24c101820NunitoW700),
        UIHelper.verticalSpace(5.h),
        Text(
          subTitleText,
          style: TextFontStyle.textStyle15c101820NunitoSansW400,
        ),
        UIHelper.verticalSpace(20.h),
      ],
    );
  }
}
