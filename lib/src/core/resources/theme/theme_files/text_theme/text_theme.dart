import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';

TextTheme textTheme = TextTheme(
  titleMedium: TextStyle(
    // color: GlobalsStyles.bluelColor,
    fontSize: 16.sp, color: AppColors.darkBlue,

    fontWeight: FontWeight.w600,
  ),
  labelLarge: const TextStyle(
    color: AppColors.offWhite,
    // fontWeight: FontWeight.w500,
    // fontSize: 16,
  ),
  //fashion body text style
  displaySmall: TextStyle(
    // color: GlobalsStyles.bluelColor,
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    overflow: TextOverflow.ellipsis,
  ),
  //home fashin header text style
  displayMedium: TextStyle(
    color: AppColors.offWhite,
    fontSize: 26.sp,
    overflow: TextOverflow.ellipsis,
    // fontWeight: FontWeight.bold,
  ),
  bodySmall: TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeight.w600,
    fontSize: 8.sp,
  ),
  bodyMedium: TextStyle(
    fontSize: 10.sp,
  ),
  // titleSmall: ,
);
