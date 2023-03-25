import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/components.dart';
import '../../../../core/constants/all_constants.dart';
import 'widgets.dart';

class AddAnswerDialog extends StatelessWidget {
  AddAnswerDialog({
    super.key,
    this.textEditingController,
    required this.onSubmit,
  });
  final TextEditingController? textEditingController;
  final ValueChanged<bool> onSubmit;
  bool isCorrect = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        right: 8.w,
        left: 8.w,
        top: 112.h,
        bottom: 420.h,
      ),
      padding: EdgeInsets.all(24.h).copyWith(bottom: 32.h),
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextField(
            title: 'Add Answer',
            hintText: 'Add answer',
            controller: textEditingController,
            height: 100.h,
            color: AppColors.grey5Color,
            autoFocuse: true,
            onSubmit: () => onSubmit(isCorrect),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Correct answer',
                style: AppTextStyles.body16w5,
              ),
              CustomSwitch(
                onChange: (value) {
                  isCorrect = value;
                },
                value: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
