/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../gen/colors.gen.dart';
import '../../../../../helpers/ui_helpers.dart';

class OnboardCardWidget extends StatefulWidget {
  const OnboardCardWidget({super.key});

  @override
  State<OnboardCardWidget> createState() => _OnboardCardWidgetState();
}

class _OnboardCardWidgetState extends State<OnboardCardWidget> {

   final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 1.sw,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.cFFFFFF,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              spacing: 20.h,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome to Dawnon Vegans!'),

                Text('Inspiring a delicious plant-based lifestyle and a vibrant vegan community.'),

                   CarouselSlider.builder(
            itemCount: widget.onboardImageList.length,
            carouselController: _carouselController,
            itemBuilder: (_, itemIndex, pageViewIndex) {
              final onboardImageItem = widget.onboardImageList[itemIndex];

              /* return Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(onboardImageItem.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ); */

              //Network Image
              return ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: CustomCachedNetworkImage(
                  imageUrl: onboardImageItem,
                  width: 1.sw,
                ),
              );
            },
            options: CarouselOptions(
              height: 200.h,
              autoPlay: true,
              viewportFraction: 1,
              autoPlayInterval: Duration(seconds: 3),
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
            ),
          ),

          UIHelper.verticalSpace(20.h),
          Center(
            child: SmoothPageIndicator(
              controller: PageController(initialPage: _currentIndex),
              count: widget.onboardImageList.length,
              effect: WormEffect(
                dotHeight: 8.h,
                dotWidth: 8.w,
                activeDotColor: AppColors.cF1C400,
              ),
              onDotClicked: (index) {
                _carouselController.animateToPage(index);
              },
            ),
          ),
                
                
                
                
                ],
            ),
          ),
        ),
      ),
    );
  }
}
 */