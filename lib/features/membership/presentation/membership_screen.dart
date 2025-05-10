import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/custom_body_text_widget.dart';
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
        actions: [
          Text('Skip', style: TextFontStyle.textStyle12c202531ManropeW600),
        ],
        title: 'Membership',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomBodyTextWidget(titleText: 'Choose Your Tier', subTitleText: 'Select the membership that best fits your foodie lifestyle',)
         
          ,
         ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (_, index) => MembershipWidget()),
          ],
        ),
      ),
    );
  }
}
