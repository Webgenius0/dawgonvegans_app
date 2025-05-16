import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/features/menu/widgets/drinks_menu_bar_widget.dart';
import 'package:dawgonvegans/features/menu/widgets/mains_menu_bar_widget.dart';
import 'package:dawgonvegans/features/menu/widgets/sides_menu_bar_widget.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/colors.gen.dart';
import '../widgets/menu_bar_membership_card_widget.dart';
import '../widgets/new_menu_bar_widget.dart';

class MenuBarScreen extends StatefulWidget {
  const MenuBarScreen({super.key});

  @override
  State<MenuBarScreen> createState() => _MenuBarScreenState();
}

class _MenuBarScreenState extends State<MenuBarScreen> {
  // New
  Set<int> isNewFavoriteList = {};
  void toggleNewFavorite(int index) {
    setState(() {
      if (isNewFavoriteList.contains(index)) {
        isNewFavoriteList.remove(index);
      } else {
        isNewFavoriteList.add(index);
      }
    });
  }

  // Mains
  Set<int> isMainFavoriteList = {};
  void toggleMainFavorite(int index) {
    setState(() {
      if (isMainFavoriteList.contains(index)) {
        isMainFavoriteList.remove(index);
      } else {
        isMainFavoriteList.add(index);
      }
    });
  }

  // Sides
  Set<int> isSideFavoriteList = {};
  void toggleSideFavorite(int index) {
    setState(() {
      if (isSideFavoriteList.contains(index)) {
        isSideFavoriteList.remove(index);
      } else {
        isSideFavoriteList.add(index);
      }
    });
  }

  // Drinks
  Set<int> isDrinkFavoriteList = {};
  void toggleDrinkFavorite(int index) {
    setState(() {
      if (isDrinkFavoriteList.contains(index)) {
        isDrinkFavoriteList.remove(index);
      } else {
        isDrinkFavoriteList.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: <Widget>[
                MenuBarMembershipCardWidget(
                  title: "Dawn'On Member",
                  subtitle:
                      "You're seeing this menu 24 hours before everyone else!",
                  image: Assets.images.capss.path,
                ),

                UIHelper.verticalSpace(20.h),
                ButtonsTabBar(
                  buttonMargin: EdgeInsets.only(right: 20.w),
                  backgroundColor: AppColors.cFE8204,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 10.h,
                  ),
                  radius: 20,
                  labelStyle: TextFontStyle.textStyle16cFFFFFFManropeW400,
                  unselectedLabelStyle:
                      TextFontStyle.textStyle16c666666ManropeW400,

                  tabs: [
                    Tab(text: 'New'),
                    Tab(text: 'Mains'),
                    Tab(text: 'Sides'),
                    Tab(text: 'Drinks'),
                  ],
                ),

                UIHelper.verticalSpace(20.h),
                Expanded(
                  child: TabBarView(
                    children: [
                      // NewMenuBarWidget
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder:
                            (_, index) => NewMenuBarWidget(
                              image: Assets.images.food.path,
                              foodName: 'Food Truck Friday',
                              foodDiscount: '10% Off',
                              foodDescription:
                                  'Warm up with our new seasonal specials',
                              foodAmount: '\$50.55',
                              foodLeaveAmount: '\$60.55',
                              isFavorite: isNewFavoriteList.contains(index),
                              onFavoriteToggle: () => toggleNewFavorite(index),
                            ),
                      ),

                      // MainsMenuBarWidget
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder:
                            (_, index) => MainsMenuBarWidget(
                              image: Assets.images.food.path,
                              foodName: 'Food Truck Friday',
                              foodDiscount: '10% Off',
                              foodDescription:
                                  'Warm up with our new seasonal specials',
                              foodAmount: '\$50.55',
                              foodLeaveAmount: '\$60.55',
                              isFavorite: isMainFavoriteList.contains(index),
                              onFavoriteToggle: () => toggleMainFavorite(index),
                            ),
                      ),

                      //SidesMenuBarWidget
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder:
                            (_, index) => SidesMenuBarWidget(
                              image: Assets.images.food.path,
                              foodName: 'Food Truck Friday',
                              foodDiscount: '10% Off',
                              foodDescription:
                                  'Warm up with our new seasonal specials',
                              foodAmount: '\$50.55',
                              foodLeaveAmount: '\$60.55',
                              isFavorite: isSideFavoriteList.contains(index),
                              onFavoriteToggle: () => toggleSideFavorite(index),
                            ),
                      ),

                      // DrinksMenuBarWidget
                      ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder:
                            (_, index) => DrinksMenuBarWidget(
                              image: Assets.images.food.path,
                              foodName: 'Food Truck Friday',
                              foodDiscount: '10% Off',
                              foodDescription:
                                  'Warm up with our new seasonal specials',
                              foodAmount: '\$50.55',
                              foodLeaveAmount: '\$60.55',
                              isFavorite: isDrinkFavoriteList.contains(index),
                              onFavoriteToggle:
                                  () => toggleDrinkFavorite(index),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
