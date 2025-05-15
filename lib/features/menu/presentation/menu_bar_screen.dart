import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/menu_bar_membership_card_widget.dart';
import '../widgets/new_menu_bar_widget.dart';
import '../widgets/silber_tab.dart';

class MenuBarScreen extends StatefulWidget {
  const MenuBarScreen({super.key});

  @override
  State<MenuBarScreen> createState() => _MenuBarScreenState();
}

class _MenuBarScreenState extends State<MenuBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Set<int> isFavoriteList = {};

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void toggleUpdateFavorite(int index) {
    setState(() {
      if (isFavoriteList.contains(index)) {
        isFavoriteList.remove(index);
      } else {
        isFavoriteList.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxScrolled) => [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50.h),
                      MenuBarMembershipCardWidget(
                        title: "Dawn'On Member",
                        subtitle:
                            "You're seeing this menu 24 hours before everyone else!",
                        image: Assets.images.capss.path,
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverTabBarDelegate(
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    tabs: const [
                      Tab(text: 'New'),
                      Tab(text: 'Mains'),
                      Tab(text: 'Sides'),
                      Tab(text: 'Drinks'),
                    ],
                  ),
                ),
              ),
            ],
        body: TabBarView(
          controller: _tabController,
          children: List.generate(4, (tabIndex) {
            return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              itemCount: 10,
              itemBuilder:
                  (context, index) => NewMenuBarWidget(
                    image: Assets.images.food.path,
                    foodName: 'Food Truck Friday',
                    foodDiscount: '10% Off',
                    foodDescription: 'Warm up with our new seasonal specials',
                    foodAmount: '\$50.55',
                    foodLeaveAmount: '\$60.55',
                    isFavorite: isFavoriteList.contains(index),
                    onFavoriteToggle: () => toggleUpdateFavorite(index),
                  ),
            );
          }),
        ),
      ),
    );
  }
}
