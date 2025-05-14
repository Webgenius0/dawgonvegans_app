import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../widgets/profile_card_widget.dart';
import '../widgets/profile_tile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Profile', leading: SizedBox.shrink()),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ProfileCardWidget for Profile Photo
            ProfileCardWidget(
              email: 'hello@designpicko.com',
              name: ' Design Picko',
              profilePhoto: Assets.images.profileImg.path,
              onTap: () {
                NavigationService.navigateTo(Routes.editProfileScreen);
              },
            ),

            UIHelper.verticalSpace(30.h),
            // Member Ship Type Show Here
            Container(
              padding: EdgeInsets.all(15.sp),
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, 0.50),
                  end: Alignment(1.00, 0.50),
                  colors: [const Color(0xFFFF8202), const Color(0xFFFF6B00)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x197483F4),
                    blurRadius: 24.r,
                    offset: Offset(4.w, 8.h),
                  ),
                ],
              ),
              child: Row(
                spacing: 15.w,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      Assets.icons.profileMembershipIcon,
                      width: 60.w,
                      height: 60.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      spacing: 5.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SuperClub!',
                          style: TextFontStyle.textStyle20cFFFFFFUrbanistW700,
                        ),
                        Text(
                          'Enjoy all benefits without restrictions,!',
                          style: TextFontStyle.textStyle12cFAFAFAUrbanistW500,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      Assets.icons.arrowRight,
                      width: 20.w,
                      height: 20.h,
                      colorFilter: ColorFilter.mode(
                        AppColors.cFFFFFF,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            UIHelper.verticalSpace(25.h),

            //  General  text
            Row(
              spacing: 15.w,
              children: [
                Text(
                  'General',
                  style: TextFontStyle.textStyle14c9E9E9EManropeW600,
                ),
                Expanded(
                  child: Divider(thickness: 1, color: AppColors.cEEEEEE),
                ),
              ],
            ),

            UIHelper.verticalSpace(25.h),

            // Profile Title List here
            ProfileTileWidget(
              icon: Assets.icons.notification,
              titleName: 'Notification',
              onTap: () {
                NavigationService.navigateTo(Routes.profileNotificationSetting);
              },
            ),
            ProfileTileWidget(
              icon: Assets.icons.eventBarIcon,
              titleName: 'Event',
              onTap: () {},
            ),
            ProfileTileWidget(
              icon: Assets.icons.profileFavorite,
              titleName: 'Favorite',
              onTap: () {},
            ),

            Row(
              spacing: 15.w,
              children: [
                Text(
                  'About',
                  style: TextFontStyle.textStyle14c9E9E9EManropeW600,
                ),
                Expanded(
                  child: Divider(thickness: 1, color: AppColors.cEEEEEE),
                ),
              ],
            ),

            UIHelper.verticalSpace(25.h),
            ProfileTileWidget(
              icon: Assets.icons.heloCenter,
              titleName: 'Help Center',
              onTap: () {
                NavigationService.navigateTo(Routes.helpCenterScreen);
              },
            ),
            ProfileTileWidget(
              icon: Assets.icons.aboutUs,
              titleName: 'About Us',
              onTap: () {
                  NavigationService.navigateTo(Routes.aboutUsScreen);
              },
            ),
            ProfileTileWidget(
              icon: Assets.icons.privacyPolicy,
              titleName: 'Privacy Policy',
              onTap: () {
                NavigationService.navigateTo(Routes.privacyPolicyScreen);
              },
            ),
            ProfileTileWidget(
              icon: Assets.icons.logOut,
              titleName: 'Logout',
              isIcon: false,
              textStyle: TextFontStyle.textStyle18c00020AManropeW500.copyWith(
                color: Colors.red,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
