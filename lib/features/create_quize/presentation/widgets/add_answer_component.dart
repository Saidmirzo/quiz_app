
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/all_constants.dart';

class AddAnswerComponent extends StatelessWidget {
  const AddAnswerComponent({
    super.key,
    required this.onTap,
  });
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 92.h,
        width: 155.w,
        decoration: BoxDecoration(
          color: AppColors.grey5Color,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.icons.add),
            SizedBox(height: 8.h),
            Text(
              'Add answer',
              style: AppTextStyles.body14w5.copyWith(
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}