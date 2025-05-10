import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomHorizontalWidget extends StatelessWidget {
  const CustomHorizontalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15.w,
      children: [
        /// Left Divider
        Expanded(child: Divider(color: AppColors.c878787, thickness: 1.w)),

      //  UIHelper.horizontalSpace(15.w),

        Text('Or sign in with', style: TextFontStyle.textStyle14c878787ManropeW500),

     //   UIHelper.horizontalSpace(15.w),

        /// Right Divider
        Expanded(child: Divider(color: AppColors.c878787, thickness: 1.w)),
      ],
    );
  }
}
