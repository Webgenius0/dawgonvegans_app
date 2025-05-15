import 'package:carousel_slider/carousel_slider.dart';
import 'package:dawgonvegans/features/product_details/widgets/product_details_widget.dart';
import 'package:dawgonvegans/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../gen/assets.gen.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<String> _imageList = [
    Assets.images.foodImg.path,
    Assets.images.onboarding1.path,
    Assets.images.onboarding2.path,
    Assets.images.onboarding3.path,
  ];
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
        
          // Carousel
          CarouselSlider.builder(
            itemCount: _imageList.length,
            carouselController: _carouselController,
            itemBuilder: (_, itemIndex, __) {
              final image = _imageList[itemIndex];
              return Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              );
            },
            options: CarouselOptions(
              height: 0.45.sh,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),

          // Indicator

          // Overlapping content
          Padding(
            padding: EdgeInsets.only(top: 300),
            child: SizedBox(
              height: double.infinity,
              width: 1.sw,
              child: Container(
                padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  color: AppColors.cFFF8F3,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                ),
                child: ProductDetailsWidget(
                  productName: 'Hotdog',
                  points: 'P-100',
                  productId: '65121145',
                  price: '12.23',
                  rating: '4.5',
                  description:
                      'Burger With Meat is a typical food from our restaurant that is much in demand by many people, this is very recommended for you',
                  userPhoto: '',
                  userName: 'David Johnson',
                  date: '1st Jan 2025',
                  totalRating: '5',
                  totalReview: '74',
                  comments:
                      "An amazing fit. I am somewhere around 6ft and ordered 40 size, It's a perfect fit and quality is worth the price...",
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 350.h),
            child: Center(
              child: SmoothPageIndicator(
                controller: PageController(initialPage: _currentIndex),
                count: _imageList.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                  dotColor: Colors.white,
                  activeDotColor: AppColors.cFE8204,
                ),
                onDotClicked: (index) {
                  _carouselController.animateToPage(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
