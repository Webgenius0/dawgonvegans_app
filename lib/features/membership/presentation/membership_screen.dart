import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/custom_body_text_widget.dart';
import '../../../gen/colors.gen.dart';
import '../widgets/membership_widget.dart';

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({super.key});

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                textAlign: TextAlign.center,
                'Membership',
                style: TextFontStyle.textStyle16c202531ManropeW600,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Skip',
                style: TextFontStyle.textStyle12c202531ManropeW600,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBodyTextWidget(
              titleText: 'Choose Your Tier',
              subTitleText:
                  'Select the membership that best fits your foodie lifestyle',
            ),

            // Membership  Card
            ListView.separated(
              separatorBuilder: (_, index) => SizedBox(height: 15.h),
              itemCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder:
                  (_, index) => MembershipWidget(
                    amount: '150',
                    memberShipType: 'Dawg’On Member',
                    color: index == 0 ? AppColors.c12A575 : AppColors.c36C0DE,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
