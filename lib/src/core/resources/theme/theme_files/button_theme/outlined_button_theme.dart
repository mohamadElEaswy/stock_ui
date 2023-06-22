import 'package:flutter/material.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/resources/theme/colors/styles.dart';

OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.all(AppStyles.textStyleElevatedButtons),
    side: MaterialStateProperty.all(
      const BorderSide(
        color: AppColors.offWhite,
        width: 1.0,
        style: BorderStyle.solid,
      ),
    ),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    overlayColor: MaterialStateProperty.all(AppColors.globalGreyColor),
  ),
);
