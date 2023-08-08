import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../constants/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key, required this.title, this.funcBack, this.funcTraling,
  });
  final String title;
  final Function()? funcBack;
  final Function()? funcTraling;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: funcBack,
        icon: SvgPicture.asset(Assets.icons.arrowLeft),
      ),
      title: Text(
        title,
        style: AppTextStyles.body24w5.copyWith(color: AppColors.accentColor),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
