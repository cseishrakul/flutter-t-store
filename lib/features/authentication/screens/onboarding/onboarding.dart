import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                Subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                Subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                Subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmootPageIndicator
          const onBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
