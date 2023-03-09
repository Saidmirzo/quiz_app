import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/components/custom_large_button.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/constants/assets.dart';
import '../widgets/onboarding_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController();
  int activeIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        activeIndex = pageController.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenColor.shade100,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 62.h, bottom: 40.h),
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Image.asset(Assets.images.onboarding1),
                  Image.asset(Assets.images.onboarding2),
                  Image.asset(Assets.images.onboarding3),
                ],
              ),
            ),
          ),
          // const Spacer(),
          Container(
            height: 358.h,
            padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(top: 35.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22.r),
                topRight: Radius.circular(22.r),
              ),
            ),
            child: Column(
              children: [
                Text(listOnboardingTitile[activeIndex],
                    style: AppTextStyles.body24wB),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 50.h),
                  child: Text(
                    listOnboardingSubTitile[activeIndex],
                    style: AppTextStyles.body16w4.copyWith(
                        color: AppColors.darkColor.shade60, height: 2),
                    textAlign: TextAlign.center,
                  ),
                ),
                OnboardingIndicator(pageController: pageController),
                SizedBox(height: 30.h),
                CustomLargeButton(
                  text: activeIndex == 2 ? 'Start the Journey!' : 'Next',
                  onTap: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceIn);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


