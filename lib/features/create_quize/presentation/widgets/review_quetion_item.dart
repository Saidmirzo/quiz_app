import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/all_constants.dart';

class ReviewQuetionsItem extends StatelessWidget {
  const ReviewQuetionsItem({
    super.key,
    required this.quetion,
    this.imgPath,
    required this.number,
  });
  final String quetion;
  final String? imgPath;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32.h,
            width: 32.h,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.accentColor,
            ),
            child: Text(
              number.toString(),
              style: AppTextStyles.body16w5.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Container(
            width: 185.w,
            margin: EdgeInsets.only(left: 16.w),
            child: Text(
              quetion,
              style: AppTextStyles.body16w5,
            ),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Container(
              height: 56.h,
              width: 56.h,
              decoration: BoxDecoration(
                color: AppColors.accent2Color,
                borderRadius: BorderRadius.circular(20.r),
                image: imgPath == null
                    ? DecorationImage(
                        image: AssetImage(Assets.images.defaultBg),
                        fit: BoxFit.cover)
                    : null,
              ),
              child: imgPath != null
                  ? Image.file(
                      File(imgPath!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
