import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/text_font_style.dart';

SnackbarController showSnakBar({
  required String title,
  required String message,
}) {
  return Get.snackbar(
    '',
    '',
    titleText: Text(title, style: TextFontStyle.textStyle14cFFFFFFDmSans700),
    messageText: Text(
      message,
      style: TextFontStyle.textStyle10cFF0000DmSans400,
    ),
    overlayBlur: 5,
    barBlur: 1,
    borderRadius: 10.r,
    animationDuration: Duration(seconds: 1),
    duration: Duration(seconds: 3),
    forwardAnimationCurve: Curves.elasticOut,
    snackPosition: SnackPosition.TOP,
    snackStyle: SnackStyle.FLOATING,
    isDismissible: false,
    backgroundColor: Colors.black87,
  );
}
