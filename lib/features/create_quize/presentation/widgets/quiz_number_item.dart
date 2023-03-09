import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/all_constants.dart';

class QuizNumberItem extends StatelessWidget {
  const QuizNumberItem({
    super.key,
    required this.number,
    required this.isActive, required this.onTap,
  });
  final int number;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 32.h,
        width: 32.h,
        margin: EdgeInsets.symmetric(horizontal: 6.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? AppColors.blackColor : Colors.transparent,
        ),
        child: Text(
          number.toString(),
          style: isActive
              ? AppTextStyles.body14w5.copyWith(
                  color: AppColors.accentColor,
                )
              : AppTextStyles.body14w4.copyWith(color: AppColors.grey2Color),
        ),
      ),
    );
  }
}
