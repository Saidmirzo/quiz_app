import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../../core/constants/all_constants.dart';
import 'widgets.dart';

class AddAnswerDialog extends StatelessWidget {
  const AddAnswerDialog({
    super.key, this.textEditingController, required this.onSubmit,
  });
  final TextEditingController? textEditingController;
  final Function() onSubmit;


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
            onSubmit: onSubmit,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Correct answer',
                style: AppTextStyles.body16w5,
              ),
              FlutterSwitch(
                value: true,
                activeColor: AppColors.primaryColor,
                onToggle: (bool value) {},
                height: 24,
                width: 44,
                padding: 2,
                toggleSize: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
