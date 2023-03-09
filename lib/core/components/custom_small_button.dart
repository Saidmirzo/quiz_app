import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/app_decorations.dart';
import '../constants/app_text_styles.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({super.key, required this.text, required this.onTap});
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: AppDecorations.buttonStyle(
        bgColor: AppColors.primaryLight.shade100,
        borderRadius: 20,
        size: Size(148.w, 57.h),
      ),
      child: Text(
        text,
        style: AppTextStyles.body18w7.copyWith(color: AppColors.accentColor),
      ),
    );
  }
}
