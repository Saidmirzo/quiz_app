import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/routes.dart';
import '../../../../core/components/custom_large_button.dart';
import '../../../../core/constants/all_constants.dart';
import '../widgets/widgets.dart';

class ChooseSubjectsPage extends StatefulWidget {
  const ChooseSubjectsPage({super.key});

  @override
  State<ChooseSubjectsPage> createState() => _ChooseSubjectsPageState();
}

class _ChooseSubjectsPageState extends State<ChooseSubjectsPage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomCreateQuizScaffold(
      appBarTitile: 'Choose Subjects',
      onBack: () => Navigator.pop(context),
      child: Stack(
        children: [
          GridView.count(
            childAspectRatio: 1.18,
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            physics: const BouncingScrollPhysics(),
            children: List.generate(
              10,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: ChooseSubjectsItem(
                  title: 'Math',
                  quizeCount: 21,
                  iconPath: Assets.icons.math,
                  isActive: index == activeIndex,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.h,
            child: CustomLargeButton(
              text: 'Next',
              onTap: () =>Navigator.pushNamed(context, Routes.createQuizeMultiple),
            ),
          )
        ],
      ),
    );
  }
}
