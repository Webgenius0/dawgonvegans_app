import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../gen/colors.gen.dart';

class FaqWidget extends StatefulWidget {
  final String title;
  final String subTitle;
  const FaqWidget({super.key, required this.title, required this.subTitle});

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        title: Text(
          widget.title,
          style: TextFontStyle.textStyle16c202531ManropeW500,
        ),
        trailing: SvgPicture.asset(
          _isExpanded ? Assets.icons.boldArrowUp : Assets.icons.boldArrowDown,
        ),
        onExpansionChanged: (bool expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.symmetric(vertical: 15.h),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: AppColors.cEEEEEE)),
            ),
            child: Text(
              widget.subTitle,
              style: TextFontStyle.textStyle12c00020AManropeW400.copyWith(
                height: 1.5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
