import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIconWidget extends StatelessWidget {
  final GestureTapCallback appleIcononTap;
  final GestureTapCallback googleIcononTap;
  const SocialIconWidget({
    super.key,
    required this.appleIcononTap,
    required this.googleIcononTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: googleIcononTap,
          child: SvgPicture.asset(
            Assets.icons.googleIcon,
            width: 30.w,
            height: 30.h,
            fit: BoxFit.none,
          ),
        ),

        InkWell(
          onTap: appleIcononTap,
          child: SvgPicture.asset(
            Assets.icons.appleIcon,
            width: 30.w,
            height: 30.h,   fit: BoxFit.none,
          ),
        ),
      ],
    );
  }
}
