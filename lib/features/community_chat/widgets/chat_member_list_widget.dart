import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/colors.gen.dart';

class ChatMemberListWidget extends StatelessWidget {
  final String name;
  final String profileImage;
  final String lastMessage;
  final String time;
  const ChatMemberListWidget({
    super.key,
    required this.name,
    required this.profileImage,
    required this.lastMessage,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        spacing: 10.w,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Profile Image
          CircleAvatar(radius: 20.r, child: Image.asset(profileImage)),

          Expanded(
            child: Row(
              children: [ 
                Expanded(flex: 3, child: Text(name, style: TextFontStyle.textStyle16c202531ManropeW600,)),
                Expanded(flex: 1, child: Text(time, style: TextFontStyle.textStyle14c00020AManropeW400,)),
              ],
            ),
          ),

          //
        ],
      ),
    );
  }
}
