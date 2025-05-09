import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/colors.gen.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  final Widget child;
  double? width;
  double? height;
  double? padding;
  double? borderRadius;
  Color? color;

  CustomCard({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.padding,
    this.borderRadius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      // ignore: deprecated_member_use
      shadowColor: AppColors.c000000.withOpacity(0.1), // Customize shadow color
      borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
      color: color ?? AppColors.cF2F2F2,
      child: Container(
        width: width ?? 1.sw,
        padding: EdgeInsets.all(padding ?? 16.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
        ),
        child: child,
      ),
    );
  }
}
