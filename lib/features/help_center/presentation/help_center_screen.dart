import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/colors.gen.dart';
import '../widgets/contact_us_widget.dart';
import '../widgets/faq_widget.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(text: 'Help Center'),
        body: Column(
          children: [
            TabBar(
              indicatorColor: AppColors.cFE8204,
              indicatorWeight: 2.w,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              //  Style for selected tab
              labelStyle: TextFontStyle.textStyle18cFE8204ManropeW600,
              //  Style for unselected tab
              unselectedLabelStyle: TextFontStyle.textStyle18c9E9E9EManropeW600,
              tabs: const [Tab(text: 'FAQ'), Tab(text: 'Contact us')],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return FaqWidget(
                        title: "What’s included in the Dawg Member plan?",

                        subTitle:
                            "The Dawg Member plan gives you access to our private chat, 24-hour menu previews, members-only updates, and up to 10% off all orders.",
                      );
                    },
                  ),

                  ContactUsWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
