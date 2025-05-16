import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:dawgonvegans/helpers/all_routes.dart';
import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../gen/colors.gen.dart';
import '../models/onboarding_model.dart';

class OnboardCardWidget extends StatelessWidget {
  final String title;
  final String subttile;
  final List<OnboardingModel> onBoardingList;
  final PageController controller;
  final int index;
  const OnboardCardWidget({
    super.key,
    required this.subttile,
    required this.title,
    required this.onBoardingList,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: ShapeDecoration(
        color: Color(0xFF2E2E2E),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: Colors.white),
          borderRadius: BorderRadius.circular(24.r),
        ),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 15.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Title Text
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextFontStyle.textStyle32cFFFFFFManropeW600,
          ),

          // Subtile
          Text(
            subttile,
            textAlign: TextAlign.center,
            style: TextFontStyle.textStyle14cFFFFFFManropeW400,
          ),

          // Page Indicator
          SmoothPageIndicator(
            controller: controller,
            count: onBoardingList.length,
            effect: ExpandingDotsEffect(
              dotHeight: 8.h,
              dotWidth: 8.w,
              activeDotColor: AppColors.cFFFFFF,
            ),
          ),

          index == onBoardingList.length - 1
              ? InkWell(
                child: SvgPicture.asset(Assets.icons.progressButton),
                onTap: () {
                  NavigationService.navigateToUntilReplacement(
                    Routes.loginScreen,
                  );
                },
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTextWidget(
                    onTap: () {
                      NavigationService.navigateToUntilReplacement(
                        Routes.loginScreen,
                      );
                    },
                    text: 'Skip',
                  ),

                  _buildTextWidget(
                    onTap: () {
                      controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    text: 'Next',
                  ),
                ],
              ),
        ],
      ),
    );
  }
}

Widget _buildTextWidget({
  required String text,
  required GestureTapCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Text(text, style: TextFontStyle.textStyle14cFFFFFFManropeW600),
  );
}
