import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/all_constants.dart';

class ChooseSubjectsItem extends StatelessWidget {
  const ChooseSubjectsItem({
    super.key,
    required this.title,
    required this.quizeCount,
    required this.isActive,
    required this.iconPath,
  });
  final String title;
  final int quizeCount;
  final bool isActive;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        color: isActive ? AppColors.pinkColor : AppColors.grey5Color,
        borderRadius: BorderRadius.circular(20.r),
      ),
      height: 132.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48.h,
            width: 48.h,
            decoration: BoxDecoration(
              color: isActive
                  ? AppColors.accentColor.withOpacity(.2)
                  : AppColors.accentColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: SvgPicture.asset(
              iconPath,
              height: 27.43,
              fit: BoxFit.scaleDown,
              color: !isActive ? AppColors.primaryColor : null,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: AppTextStyles.body16w5.copyWith(
              color: isActive ? AppColors.accentColor : AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            '$quizeCount Quizzes',
            style: AppTextStyles.body12w4.copyWith(
              color: isActive
                  ? AppColors.accentColor.withOpacity(
                      .8,
                    )
                  : AppColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}