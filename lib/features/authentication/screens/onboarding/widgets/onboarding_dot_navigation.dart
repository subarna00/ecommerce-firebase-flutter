import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;
    return Positioned(
     bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
     left: TSizes.defaultSpace,
     child: SmoothPageIndicator(
      controller: controller.pageController,
       count: 3,
       onDotClicked: (index) => controller.dotNavigationClicked(index: index),
        effect:  ExpandingDotsEffect(activeDotColor: dark ? TColors.white : TColors.dark, dotHeight: 6),));
  }
}