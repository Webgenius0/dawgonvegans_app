import 'package:dawgonvegans/features/onboarding/widgets/onboard_card_widget.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // List of onboarding Items
  final List<OnboardingModel> onBoardingList = [
    OnboardingModel(
      image: Assets.images.onboarding1.path,
      title: "Welcome to Dawg’On Vegans!",
      subtitle:
          'Inspiring a delicious plant-based lifestyle and a vibrant vegan community.',
    ),
    OnboardingModel(
      image: Assets.images.onboarding2.path,
      title: "More than food, it's a movement.",
      subtitle:
          'Discover exclusive vegan menus, supportive community chats, and member-only events designed just for you.',
    ),
    OnboardingModel(
      image: Assets.images.onboarding3.path,
      title: "Pick your perfect membership.",
      subtitle:
          'From free updates to VIP discounts and SuperClub events — we’ve got a plan that fits your lifestyle.',
    ),
  ];

  // Page view Controller
  final PageController _pageController = PageController(initialPage: 0);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        allowImplicitScrolling: true,
        controller: _pageController,
        itemCount: onBoardingList.length,
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        itemBuilder: (_, index) {
          var item = onBoardingList[index];
          return Container(
            width: 1.sw,
            height: 1.sh,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: OnboardCardWidget(
                subttile: item.subtitle,
                title: item.title,
                onBoardingList: onBoardingList,
                controller: _pageController,
                index: index,
              ),
            ),
          );
        },
      ),
    );
  }
}
