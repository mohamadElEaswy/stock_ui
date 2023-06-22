import 'package:flutter/material.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';

const TextTheme textTheme = TextTheme(
  titleMedium: TextStyle(
    // color: GlobalsStyles.bluelColor,
    fontSize: 18, color: AppColors.darkBlue,

    fontWeight: FontWeight.w600,
  ),
  labelLarge: TextStyle(
    color: AppColors.offWhite,
    // fontWeight: FontWeight.w500,
    // fontSize: 16,
  ),
  //fashion body text style
  displaySmall: TextStyle(
    // color: GlobalsStyles.bluelColor,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    overflow: TextOverflow.ellipsis,
  ),
  //home fashin header text style
  displayMedium: TextStyle(
    color: AppColors.offWhite,
    fontSize: 20,
    overflow: TextOverflow.ellipsis,
    // fontWeight: FontWeight.bold,
  ),
  bodySmall: TextStyle(color: AppColors.greyColor, fontWeight: FontWeight.w600),
  // titleSmall: ,
);
