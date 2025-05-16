import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

// defaultPin Theme
final defaultPinTheme = PinTheme(
  width: 60.w,
  height: 60.h,
  textStyle: TextFontStyle.textStyle24c0F00F0FManropeW400,

  decoration: BoxDecoration(
    border: Border.all(color: AppColors.cEAEAEA),
    color: AppColors.cFFFFFF,
    borderRadius: BorderRadius.circular(8.r),
  ),
);

// focusedPinTheme
final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: AppColors.c36C0DE),
  color: AppColors.cFFFFFF,
  borderRadius: BorderRadius.circular(8.r),
);

// submittedPinTheme
final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
    color: const Color.fromARGB(255, 13, 90, 153),
  ),
);
// errrorPin Theme
final errorPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Colors.red),
  borderRadius: BorderRadius.circular(8.r),
);
