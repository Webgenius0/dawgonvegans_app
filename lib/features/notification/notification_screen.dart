import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/colors.gen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> data = [
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
    {
      'icon': Assets.icons.discountIcon,
      'title': "30% Special Discount!",
      'subtitle': "Special promotion only valid today",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Notification'),
      body: ListView.separated(
        separatorBuilder: (_, index) => Divider(
          thickness: 1.w,
          color: AppColors.cEDEDED,
        ),
        itemCount: data.length,
        itemBuilder:
            (_, index) => ListTile(
              leading: CircleAvatar(
                radius: 25.r,
                backgroundColor: AppColors.cFFFFFF,
                child: SvgPicture.asset(data[index]['icon']),
              ),
              title: Text(
                data[index]['title'],
                style: TextFontStyle.textStyle26c202531ManropeW600,
              ),
              subtitle: Text(
                data[index]['subtitle'],
                style: TextFontStyle.textStyle14c878787ManropeW400,
              ),
            ),
      ),
    );
  }
}
