/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../gen/colors.gen.dart';

class MediaPickerWidget extends StatefulWidget {
  final void Function(int index) onTap;
  const MediaPickerWidget({super.key, required this.onTap});

  @override
  State<MediaPickerWidget> createState() => _MediaPickerWidgetState();
}

class _MediaPickerWidgetState extends State<MediaPickerWidget> {
  final List<Map<String, dynamic>> _items = [
    {'title': 'Take a Photo', 'icon': Icons.camera},

    {'title': 'Choose from Album', 'icon': Icons.photo},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cF6F6F6,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: ListView.separated(
        separatorBuilder: (_, index) {
          return Divider(thickness: 0.5.w, color: AppColors.c000000);
        },
        padding: EdgeInsets.zero,
        itemCount: _items.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) {
          var item = _items[index];
          return ListTile(
            onTap: () => widget.onTap(index),
            title: Text(
              item['title'],
              style: TextFontStyle.textStyle15c101820NunitoW700,
            ),
            leading: Icon(item['icon'], size: 20.sp),
          );
        },
      ),
    );
  }
}
 */