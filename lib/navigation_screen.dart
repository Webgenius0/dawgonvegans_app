/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'constants/text_font_style.dart';

import 'gen/assets.gen.dart';
import 'gen/colors.gen.dart';

class NavigationScreen extends StatefulWidget {
  final int initialIndex;
  const NavigationScreen({super.key, required this.initialIndex});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late int _selectedIndex; // Manage the state locally

  final List<Widget> _screen = const [
    TaskScreen(),
    EvolutionScreen(),
    HomeScreen(),
    RankingScreen(),
    SocialScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex; // Initialize the state
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          _screen[_selectedIndex], // Use the local state variable
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              decoration: ShapeDecoration(
                color: AppColors.cFFFFFF,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(Assets.icons.tarefasBottomIcon, "Tarefas", 0),
                  _buildNavItem(Assets.icons.evolucaoBottomIcon, "Evolução", 1),
                  _buildNavItem(Assets.icons.homeBottomIcon, "Início", 2),
                  _buildNavItem(Assets.icons.rankingBottomIcon, "Ranking", 3),
                  _buildNavItem(Assets.icons.socialBottomIcon, "Social", 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update the local state
        });
      },
      child: Column(
        spacing: 4.h,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            width: 20.w,
            height: 20.h,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(
              _selectedIndex == index ? AppColors.cF1C400 : AppColors.c101820,
              BlendMode.srcIn,
            ),
          ),
          Text(
            label,
            style: TextFontStyle.textStyle10c101820NunitoSansW600.copyWith(
              color:
                  _selectedIndex == index
                      ? AppColors.cF1C400
                      : AppColors.c101820,
            ),
          ),
          SvgPicture.asset(
            Assets.icons.dotIcon,
            colorFilter: ColorFilter.mode(
              _selectedIndex == index ? AppColors.cF1C400 : Colors.transparent,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
 */