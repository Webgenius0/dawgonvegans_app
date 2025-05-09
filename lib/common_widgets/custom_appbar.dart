/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../helpers/all_routes.dart';
import '../helpers/navigation_service.dart';
import '../helpers/ui_helpers.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? style;
  final bool centerTitle;
  final double height;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    this.title,
    this.centerTitle = true,
    this.automaticallyImplyLeading = false,
    this.actions,
    this.backgroundColor,
    this.foregroundColor,
    this.style,
    this.leading,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
          leading ??
          (automaticallyImplyLeading
              ? BackButton(
                color: AppColors.c000000,
                onPressed: () {
                  NavigationService.goBack;
                },
              )
              : null),

      title: Text(
        title ?? '',
        style: style ?? TextFontStyle.textStyle18c000000NunitoW700,
      ),
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      foregroundColor: foregroundColor ?? AppColors.c000000,
      actions:
          actions ??
          [
            /* NotificationBadge(
              notificationCount: 3,
              onTap: () {
                NavigationService.navigateTo(Routes.notificationScreen);
              },
            ), */
            UIHelper.horizontalSpace(5.w),
            Builder(
              builder:
                  (context) => IconButton(
                    icon: SvgPicture.asset(
                      Assets.icons.menuBar,
                      width: 25.w,
                      height: 25.h,
                      fit: BoxFit.none,
                      colorFilter: ColorFilter.mode(
                        AppColors.c000000,
                        BlendMode.srcIn,
                      ),
                    ),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
            ),
          ],
      backgroundColor: backgroundColor ?? AppColors.cF1C400,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height.h);
}
 */