import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';

class OnboardingIndicator extends StatefulWidget {
  const OnboardingIndicator({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  State<OnboardingIndicator> createState() => _OnboardingIndicatorState();
}

class _OnboardingIndicatorState extends State<OnboardingIndicator> {
  int activeIndex = 0;
  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      setState(() {
        activeIndex = widget.pageController.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          height: 9.h,
          width: activeIndex == index ? 28.w : 9.h,
          margin: EdgeInsets.symmetric(horizontal: 7.w),
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: activeIndex == index
                ? AppColors.primaryLight.shade100
                : AppColors.greyColor.shade40,
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
    );
  }
}
