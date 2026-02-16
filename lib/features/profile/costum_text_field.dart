import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostumTextfieldProfileWidget extends StatelessWidget {
  const CostumTextfieldProfileWidget({
    super.key,
    required this.controller,
    required this.label,
    this.textInputType,
  });
  final String label;
  final TextEditingController controller;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      controller: controller,
      cursorColor: AppColors.primaryColor,
      style: TextStyle(color: AppColors.primaryColor),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: AppColors.primaryColor, fontSize: 18.sp),
        hintStyle: TextStyle(color: AppColors.primaryColor, fontSize: 18.sp),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          borderRadius: BorderRadius.circular(15.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
    );
  }
}
