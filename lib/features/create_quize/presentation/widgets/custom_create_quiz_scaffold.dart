import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/components/custom_app_bar.dart';
import '../../../../core/constants/app_colors.dart';

class CustomCreateQuizScaffold extends StatelessWidget {
  const CustomCreateQuizScaffold({
    super.key,
    required this.appBarTitile,
    required this.onBack,
    required this.child,
    this.padding,
  });
  final String appBarTitile;
  final Function() onBack;
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      appBar: CustomAppBar(
        title: appBarTitile,
        funcBack: onBack,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        width: double.maxFinite,
        padding: padding ?? EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.r),
            topRight: Radius.circular(32.r),
          ),
        ),
        child: child,
      ),
    );
  }
}
