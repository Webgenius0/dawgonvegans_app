import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../widgets/event_list_widget.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Dawn'On Vegans Events",
                style: TextFontStyle.textStyle20c333333ManropeW700,
              ),
              Text(
                "Exclusive virtual experiences for our SuperClub members",
                style: TextFontStyle.textStyle20c666666ManropeW400,
              ),

              ListView.separated(
                separatorBuilder: (_, index) => SizedBox(height: 20.h,),
                itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:
                    (_, index) => EventListWidget(
                      image: Assets.images.food.path,
                      foodName: 'Gourmet Hot Dog Masterclass',
                      hostName: 'Hosted by Chef Michael Rodriguez',
                      platForm:  'Zoom',
                     time: 'Today, February 15 at 6:00 PM',
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
