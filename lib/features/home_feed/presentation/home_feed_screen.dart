import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../widgets/feed_card_widget.dart';

class HomeFeedScreen extends StatefulWidget {
  const HomeFeedScreen({super.key});

  @override
  State<HomeFeedScreen> createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Container(
          decoration: BoxDecoration(
            color: AppColors.cFFFFFF,
            shape: BoxShape.circle,
          ),
          child: Image.asset(Assets.images.avatar.path),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.w),
            decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(Assets.icons.mesage),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.w),
            decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(Assets.icons.notification),
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

            FeedCardWidget(name: 'Dona', points: '2450', level: '01', memberType: 'VIP',)
          ],
        ),
      ),
    );
  }
}
