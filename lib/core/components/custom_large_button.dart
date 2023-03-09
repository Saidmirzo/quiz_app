import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';
import '../constants/app_decorations.dart';
import '../constants/app_text_styles.dart';

class CustomLargeButton extends StatelessWidget {
  const CustomLargeButton({super.key, required this.text, required this.onTap});
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: AppDecorations.buttonStyle(
        bgColor: AppColors.primaryColor,
        borderRadius: 20,
        size: Size(327.w, 57.h),
      ),
      child: Text(
        text,
        style: AppTextStyles.body18w7.copyWith(color: AppColors.accentColor),
      ),
    );
  }
}
