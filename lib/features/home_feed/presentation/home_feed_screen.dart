import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/helpers/all_routes.dart';
import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../widgets/feed_card_widget.dart';
import '../widgets/food_card_widget.dart';

class HomeFeedScreen extends StatefulWidget {
  const HomeFeedScreen({super.key});

  @override
  State<HomeFeedScreen> createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen> {
  Set<int> isFavoriteList = {};

  void toogleUpdateFavorite(int index) {
    setState(() {
      if (isFavoriteList.contains(index)) {
        isFavoriteList.remove(index);
      } else {
        isFavoriteList.add(index);
      }
    });
  }

  Set<int> isLikeList = {};

  void toogleUpdateLike(int index) {
    setState(() {
      if (isLikeList.contains(index)) {
        isLikeList.remove(index);
      } else {
        isLikeList.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: InkWell(
          onTap: () {
            NavigationService.navigateTo(Routes.editProfileScreen);
          },
          child: Container(
            width: 55.w,
            height: 55.h,
            margin: EdgeInsets.only(left: 20.w),
            decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              Assets.images.avatar.path,
              fit: BoxFit.cover,
              width: 50.w,
              height: 50.h,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              NavigationService.navigateTo(Routes.communityChatScreen);
            },
            child: Container(
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(Assets.icons.mesage),
            ),
          ),
          InkWell(
            onTap: () {
              NavigationService.navigateTo(Routes.notificationScreen);
            },
            child: Container(
              margin: EdgeInsets.only(right: 20.w),
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(Assets.icons.notification),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card Widget
            FeedCardWidget(
              name: 'Dona',
              points: '2450',
              level: '01',
              memberType: 'VIP',
            ),

            UIHelper.verticalSpace(20.h),

            Text(
              "Dawn'On Vegans Feed",
              style: TextFontStyle.textStyle16c666666ManropeW600,
            ),

            UIHelper.verticalSpace(15.h),

            ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.h);
              },
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                final isFavorite = isFavoriteList.contains(index);
                final isLike = isLikeList.contains(index);
                return InkWell(
                  onTap: () {
                    NavigationService.navigateTo(Routes.productDetailsScreen);
                  },
                  child: FoodCardWidget(
                    image: Assets.images.food.path,
                    foodName: 'Food Truck Friday',
                    foodStatus: 'Upcoming',
                    foodDescription: 'Warm up with our new seasonal specials',
                    totalLikes: '234 likes',
                    totalComments: '45 comments',
                    times: '2 hours ago',
                    isFavorite: isFavorite,
                    isLike: isLike,
                    onFavoriteToggle: () => toogleUpdateFavorite(index),
                    onLikeToggle: () => toogleUpdateLike(index),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
