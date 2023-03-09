import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets.dart';

class NumberIndicator extends StatefulWidget {
  const NumberIndicator({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  State<NumberIndicator> createState() => _NumberIndicatorState();
}

class _NumberIndicatorState extends State<NumberIndicator> {
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: List.generate(
          10,
          (index) => QuizNumberItem(
            onTap: () {
              widget.pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
              );
            },
            number: index + 1,
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
