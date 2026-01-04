import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/texts.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children:[
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) => controller.updatePageIndicator(index: index),
            children: [
              OnboardingPage(image: TImages.tOnBoardingImage1, title: TTexts.tOnBoardingTitle1, subtitle: TTexts.tOnBoardingSubTitle1),
              OnboardingPage(image: TImages.tOnBoardingImage2, title: TTexts.tOnBoardingTitle2, subtitle: TTexts.tOnBoardingSubTitle2),
              OnboardingPage(image: TImages.tOnBoardingImage3, title: TTexts.tOnBoardingTitle3, subtitle: TTexts.tOnBoardingSubTitle3),
            ],
          ),
         OnboardingSkip(),

         OnboardingDotNavigation(),

         OnboardingNextButton()
      ]),
    );
  }
}

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
     right: TSizes.defaultSpace,
     bottom: TDeviceUtils.getBottomNavigationBarHeight() ,
     child: ElevatedButton(
      onPressed: () => OnboardingController.instance.nextPage(), 
      style: ElevatedButton.styleFrom( shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : TColors.black),
      child: const Icon(Iconsax.arrow_right_3),
     ),
    );
  }
}


