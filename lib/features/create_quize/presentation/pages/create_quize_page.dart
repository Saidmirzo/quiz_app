import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/routes.dart';

import '../../../../core/components/components.dart';
import '../widgets/widgets.dart';

class CreateQuizePage extends StatelessWidget {
  const CreateQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCreateQuizScaffold(
      appBarTitile: 'Create Quiz',
      onBack: () {},
      child: Column(
        children: [
          AddImageComponent(onGetImage: (value) {}),
          const CustomTextField(title: 'Title', hintText: 'Enter quiz title'),
          CustomTextField(
            title: 'Quiz Category',
            hintText: 'Choose quiz category',
            isButton: true,
            onTap: () =>
                Navigator.pushNamed(context, Routes.chooseSubjectsPage),
          ),
          CustomTextField(
            title: 'Description',
            hintText: 'Enter quiz description',
            height: 88.h,
          ),
          const Spacer(),
          CustomLargeButton(
            text: 'Add Question',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
