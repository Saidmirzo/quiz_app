import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/core/constants/app_colors.dart';
import 'package:quiz_app/core/constants/app_text_styles.dart';
import 'package:quiz_app/core/constants/assets.dart';
import 'package:quiz_app/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        // extendBodyBehindAppBar: true,
        extendBody: true,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.icons.sun),
                            SizedBox(width: 8.w),
                            Text(
                              'GOOG MORNING',
                              style: AppTextStyles.body12w5.copyWith(
                                color: AppColors.accent1Color,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Madelyn Dias',
                          style: AppTextStyles.body24w5.copyWith(
                            color: AppColors.accentColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 56.h,
                      width: 56.h,
                      child: CircleAvatar(
                        backgroundColor: AppColors.avatarBgColor,
                        backgroundImage: AssetImage(
                          Assets.images.user1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                // height: 300.h,
                padding: EdgeInsets.all(24.h),
                decoration: BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.r),
                    topRight: Radius.circular(32.r),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Live Quizzes', style: AppTextStyles.body20w5),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Routes.chooseSubjectsPage);
                          },
                          child: Text(
                            'See all',
                            style: AppTextStyles.body14w5.copyWith(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    const LiveQuizesItem(
                      title: 'Statistics Math Quiz',
                      category: 'Math',
                      quizeCount: 12,
                    ),
                    const LiveQuizesItem(
                      title: 'Statistics Math Quiz',
                      category: 'Math',
                      quizeCount: 12,
                    ),
                    const LiveQuizesItem(
                      title: 'Statistics Math Quiz',
                      category: 'Math',
                      quizeCount: 12,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.createQuizePage);
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          child: BottomAppBar(
            notchMargin: 10,
            height: 83.h,
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(Assets.icons.home),
                ),
                SizedBox(width: 30.w),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(Assets.icons.search),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(Assets.icons.progress),
                ),
                SizedBox(width: 30.w),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(Assets.icons.person),
                ),
              ],
            ),
          ),
        ));
  }
}

class LiveQuizesItem extends StatelessWidget {
  const LiveQuizesItem({
    super.key,
    required this.title,
    required this.category,
    required this.quizeCount,
  });
  final String title;
  final String category;
  final int quizeCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.all(8.h).copyWith(right: 16.w),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.grey5Color,
          width: 2,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 64.h,
            width: 64.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: AppColors.accent2Color),
          ),
          SizedBox(width: 16.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.body16w5,
              ),
              SizedBox(height: 6.h),
              Text(
                '$category • $quizeCount Quizzes',
                style: AppTextStyles.body12w4,
              )
            ],
          ),
          const Spacer(),
          SvgPicture.asset(Assets.icons.arrowRight)
        ],
      ),
    );
  }
}
