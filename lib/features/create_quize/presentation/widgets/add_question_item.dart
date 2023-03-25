import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/core/constants/all_constants.dart';

import 'add_answer_component.dart';
import 'widgets.dart';

class AddQuestionItem extends StatefulWidget {
  const AddQuestionItem({super.key});

  @override
  State<AddQuestionItem> createState() => _AddQuestionItemState();
}

class _AddQuestionItemState extends State<AddQuestionItem> {
  List<String> listAnswers = [];
  final TextEditingController answerContrller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListView(
        padding: EdgeInsets.only(bottom: 80.h),
        physics: const BouncingScrollPhysics(),
        children: [
          AddImageComponent(
            margin: EdgeInsets.only(top: 16.h, bottom: 30),
          ),
          const CustomTextField(
            title: 'Add Question',
            hintText: 'Enter your question',
          ),
          SizedBox(
            height: listAnswers.length == 4
                ? 0
                : listAnswers.length >= 2
                    ? 125.h
                    : 250.h,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.68,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(4 - listAnswers.length, (index) {
                return AddAnswerComponent(onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Material(
                      color: Colors.transparent,
                      child: AddAnswerDialog(
                        textEditingController: answerContrller,
                        onSubmit: (isCorrect) {
                          Navigator.pop(context);
                          listAnswers.add(answerContrller.text);
                          answerContrller.clear();
                          setState(() {});
                        },
                      ),
                    ),
                  );
                });
              }),
            ),
          ),
          Text('Answers', style: AppTextStyles.body16w5),
          ...List.generate(
            listAnswers.length,
            (index) => Container(
              width: double.maxFinite,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey5Color, width: 2),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                listAnswers[index],
                style: AppTextStyles.body16w4
                    .copyWith(color: AppColors.blackColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
