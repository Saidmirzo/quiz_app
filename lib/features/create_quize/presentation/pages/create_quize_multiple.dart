import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/components/custom_large_button.dart';
import 'package:quiz_app/features/create_quize/presentation/widgets/widgets.dart';

class CreateQuizeMultiple extends StatefulWidget {
  const CreateQuizeMultiple({super.key});

  @override
  State<CreateQuizeMultiple> createState() => _CreateQuizeMultipleState();
}

class _CreateQuizeMultipleState extends State<CreateQuizeMultiple> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return CustomCreateQuizScaffold(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      appBarTitile: 'Create Quiz',
      onBack: () => Navigator.pop(context),
      child: Stack(
        children: [
          Column(
            children: [
              NumberIndicator(
                pageController: pageController,
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children:
                      List.generate(10, (index) => const AddQuestionItem()),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomLargeButton(
              text: 'Add Question',
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
