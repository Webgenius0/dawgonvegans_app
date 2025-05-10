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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      
        Text(titleText, style: TextFontStyle.textStyle32c202531ManropeW600),
        UIHelper.verticalSpace(5.h),
        Text(subTitleText, style: TextFontStyle.textStyle14c202531ManropeW500),
        UIHelper.verticalSpace(30.h),
      ],
    );
  }
}
