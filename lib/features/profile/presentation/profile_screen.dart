import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../gen/assets.gen.dart';
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
      appBar: CustomAppBar(text: 'Profile'),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // Profile photo
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Design Picko',),
              subtitle: Text('hello@designpicko.com',),
              trailing: Icon(Icons.arrow_back),
              leading: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(15.r),
                child: Image.asset(
                  Assets.images.photo.path,
                  width: 100.w,
                  height: 100.h,
                ),
              ),
            ),
 Text('General', style: TextFontStyle.textStyle14c9E9E9EManropeW600,),

            ProfileTileWidget(icon: Assets.icons.notification, titleName: 'Notification', onTap: () {  },),
            ProfileTileWidget(icon: Assets.icons.eventBarIcon, titleName: 'Event', onTap: () {  },),
            ProfileTileWidget(icon: Assets.icons.profileFavorite, titleName: 'Favorite', onTap: () {  },),

           
            Text('About', style: TextFontStyle.textStyle14c9E9E9EManropeW600),

             ProfileTileWidget(icon: Assets.icons.heloCenter, titleName: 'Help Center', onTap: () {  },),
            ProfileTileWidget(icon: Assets.icons.aboutUs, titleName: 'About Us', onTap: () {  },),
            ProfileTileWidget(icon: Assets.icons.privacyPolicy, titleName: 'Privacy Policy', onTap: () {  },),
            ProfileTileWidget(icon: Assets.icons.logOut, titleName: 'Logout', onTap: () {  },),
          ],
        ),
      ),
    );
  }
}
