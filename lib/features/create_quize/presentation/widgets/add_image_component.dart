import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/constants/all_constants.dart';

class AddImageComponent extends StatefulWidget {
  const AddImageComponent({
    super.key,
    this.margin,
    required this.onGetImage, this.path,
  });
  final EdgeInsets? margin;
  final ValueChanged<String> onGetImage;
  final String? path;

  @override
  State<AddImageComponent> createState() => _AddImageComponentState();
}

class _AddImageComponentState extends State<AddImageComponent> {
  ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        image = await getImage();
        setState(() {});
        widget.onGetImage(image!.path);
      },
      child: Container(
        width: double.maxFinite,
        height: 200.h,
        margin: widget.margin ?? EdgeInsets.only(bottom: 16.h),
        decoration: BoxDecoration(
          color: AppColors.grey5Color,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: 
        image != null || widget.path!=null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.file(
                  File(widget.path!=null?widget.path!:image!.path),
                  fit: BoxFit.cover,
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.imagePicker),
                  Text(
                    'Add Cover Image',
                    style: AppTextStyles.body16w5.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
      ),
    );
  }

  Future<XFile?> getImage() async {
    XFile? xFile = await picker.pickImage(source: ImageSource.gallery);

    return xFile;
  }
}
