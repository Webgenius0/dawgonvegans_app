import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';

class CustomBottomSheetImagePicker extends StatelessWidget {
  final void Function(int index) onTap;

  CustomBottomSheetImagePicker({super.key, required this.onTap});

  final List<Map<String, dynamic>> data = [
    {'title': 'Camera', 'icon': Icons.camera},
    {'title': 'Gallery', 'icon': Icons.photo_library},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(thickness: 1);
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (_, index) {
        final item = data[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
          child: GestureDetector(
            onTap: () => onTap(index),
            child: Row(
              children: [
                Icon(item['icon'], size: 24.sp),
                SizedBox(width: 20.w),
                Text(
                  item['title'],
                  style: TextFontStyle.textStyle16c00020AManropeW400,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
