import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/features/event/presentation/event_screen.dart';
import 'package:dawgonvegans/features/menu/presentation/menu_bar_screen.dart';
import 'package:dawgonvegans/features/profile/profile_screen.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'features/home_feed/presentation/home_feed_screen.dart';
import 'gen/colors.gen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _widgetList = [
    HomeFeedScreen(),
    MenuBarScreen(),
    EventScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: AppColors.cFFFFFF,
        selectedIndex: _selectedIndex,
        height: 70.h,
        showElevation: true,
        animationCurve: Curves.ease,
        onItemSelected:
            (index) => setState(() {
              _selectedIndex = index;
            }),
        items: [
          _flashyTabBarItemWidget(icon: Assets.icons.homeBarIcon, text: 'Feed'),
          _flashyTabBarItemWidget(
            icon: Assets.icons.menuBarIcon,
            text: 'Menu ',
          ),
          _flashyTabBarItemWidget(
            icon: Assets.icons.eventBarIcon,
            text: 'Event',
          ),
          _flashyTabBarItemWidget(
            icon: Assets.icons.userBarIcon,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}

FlashyTabBarItem _flashyTabBarItemWidget({
  required String icon,
  required String text,
}) {
  return FlashyTabBarItem(
    icon: SvgPicture.asset(icon, width: 30.w, height: 30.h, fit: BoxFit.none),
    title: Text(text, style: TextFontStyle.textStyle12cFE8C00ManropeW400),
  );
}
