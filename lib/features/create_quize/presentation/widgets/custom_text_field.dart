import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/core/constants/assets.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.height,
    this.isButton,
    this.onTap,
    this.color,
    this.autoFocuse,
    this.onSubmit,
    this.controller,
  });
  final String title;
  final String hintText;
  final double? height;
  final bool? isButton;
  final Function()? onTap;
  final Color? color;
  final bool? autoFocuse;
  final Function()? onSubmit;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.body16w5),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: height ?? 56.h,
            margin: EdgeInsets.only(top: 8.h, bottom: 16.h),
            padding: EdgeInsets.only(left: 24.w, right: 16.w),
            decoration: BoxDecoration(
              color: color,
              border: Border.all(color: AppColors.grey5Color, width: 2),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: isButton ?? false
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        hintText,
                        style: AppTextStyles.body16w4.copyWith(
                          color: AppColors.grey2Color,
                        ),
                      ),
                      SvgPicture.asset(Assets.icons.arrowRight)
                    ],
                  )
                : TextField(
                    controller: controller,
                    onSubmitted: (value) =>
                        onSubmit != null ? onSubmit!() : null,
                    autofocus: autoFocuse ?? false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: AppTextStyles.body16w4.copyWith(
                        color: AppColors.grey2Color,
                      ),
                    ),
                    style: AppTextStyles.body16w4
                        .copyWith(color: AppColors.grey2Color),
                  ),
          ),
        )
      ],
    );
  }
}
