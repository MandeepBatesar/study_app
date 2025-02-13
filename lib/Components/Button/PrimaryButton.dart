import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_app/Components/Constants/Stylesheet.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool isExpanded;
  final bool isloading;
  final bool backGroundTransparent;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backGroundTransparent = false,
    this.isExpanded = false,
    this.isloading = false,
  });

  @override
  Widget build(BuildContext context) {
    final button = TextButton(
        onPressed: () {
          isloading ? null : onPressed();
        },
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
            backgroundColor: backGroundTransparent
                ? Colors.transparent
                : AppColors().primary,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors().primary),
                borderRadius: BorderRadius.circular(10.r))),
        child: isloading
            ? SizedBox(
                height: 20.sp,
                width: 20.sp,
                child: CircularProgressIndicator(
                  color: AppColors().white,
                ),
              )
            : Text(
                title,
                style: AppTextTheme().fs16Normal.copyWith(
                    color: backGroundTransparent
                        ? AppColors().primary
                        : AppColors().white),
              ));
    return isExpanded ? Expanded(child: button) : button;
  }
}
