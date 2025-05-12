import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? text;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final TextStyle? style;
  final bool centerTitle;
  final double height;
  final Widget? leading;
  final Widget? title;

  const CustomAppBar({
    super.key,
    this.text,
    this.centerTitle = true,
    this.automaticallyImplyLeading = false,
    this.actions,
    this.backgroundColor,
    this.title,

    this.style,
    this.leading,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () => NavigationService.goBack,
        child:
            leading ??
            SvgPicture.asset(
              Assets.icons.back,
              width: 30.w,
              height: 30.h,
              fit: BoxFit.none,
            ),
      ),
      title: title ?? Text(
        text ?? '',
        style: style ?? TextFontStyle.textStyle16c202531ManropeW600,
      ),
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
      backgroundColor: backgroundColor ?? AppColors.cFFF8F3,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height.h);
}
