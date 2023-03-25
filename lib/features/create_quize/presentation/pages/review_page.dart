import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/core/components/custom_app_bar.dart';
import 'package:quiz_app/core/constants/app_colors.dart';
import 'package:quiz_app/core/constants/app_text_styles.dart';
import 'package:quiz_app/core/constants/assets.dart';

import '../widgets/widgets.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CustomAppBar(
          title: 'Create Quiz', funcBack: () => Navigator.pop(context)),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(Assets.images.reviewBg),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.maxFinite,
                height: 178.h,
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                decoration: BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 8.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(.1),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(Assets.icons.devices),
                              Text(
                                'TECH • 5 QUIZZES',
                                style: AppTextStyles.body12w5
                                    .copyWith(color: AppColors.primaryColor),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(Assets.icons.pencil),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
                      child: Text(
                        'Remote Work Tools Quiz',
                        style: AppTextStyles.body20w5,
                      ),
                    ),
                    Text(
                      'Take this basic remote work tools quiz to test your tech knowledge.',
                      style: AppTextStyles.body16w4.copyWith(
                        color: AppColors.grey2Color,
                      ),
                    )
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(0, 1),
                child: ClipPath(
                  clipper: Clipper(),
                  child: Container(
                    height: 25,
                    width: 90,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 8.w).copyWith(top: 16.h),
            padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.circular(32.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Questions', style: AppTextStyles.body18w5),
                    Container(
                      height: 24.h,
                      width: 24.h,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 8.w),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        '5',
                        style: AppTextStyles.body14w7
                            .copyWith(color: AppColors.accentColor),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(Assets.icons.pencil),
                  ],
                ),
                Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                  margin: EdgeInsets.only(top: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.grey5Color,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      ReviewQuetionsItem(
                          number: 1,
                          quetion:
                              'Which mathematical symbol was the title of Ed Sheeran’s first album in 2011?',
                          imgPath: ''),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Offset controlPoint1 = Offset(0, size.height);
    // Offset controlPoint2 = Offset(20, size.width/4);
    // Offset endPoint = Offset(size.width / 2, 0);
    Path path = Path()
      ..moveTo(0, size.height)
      // ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
      //     controlPoint2.dy, endPoint.dx, endPoint.dy)
      // ..quadraticBezierTo(5, size.height - 5, 10, size.height - 7)
      ..quadraticBezierTo(size.width / 2, 0, size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
