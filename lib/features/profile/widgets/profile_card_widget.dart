import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class ProfileCardWidget extends StatelessWidget {
  final String profilePhoto;
  final String name;
  final String email;
  final GestureTapCallback onTap;

  const ProfileCardWidget({
    super.key,
    required this.email,
    required this.name,
    required this.profilePhoto,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        spacing: 15.w,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Profile Photo
          Expanded(
            flex: 1,
            child: Image.asset(
              profilePhoto,
              fit: BoxFit.cover,
              width: 60.w,
              height: 60.h,
            ),
          ),

          // Name || EMail
          Expanded(
            flex: 3,
            child: Column(
              spacing: 5.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextFontStyle.textStyle14c212121ManropeW500),
                Text(email, style: TextFontStyle.textStyle14c212121ManropeW500),
              ],
            ),
          ),

          // Arrow Icon
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              Assets.icons.arrowRight,
              width: 20.w,
              height: 20.h,
              colorFilter: ColorFilter.mode(AppColors.c212121, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
