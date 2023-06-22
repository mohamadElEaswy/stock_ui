import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';

const AppBarTheme appBarTheme = AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(
    color: AppColors.darkBlue,
  ),
  // shadowColor: GlobalColors.lightBlue,
  scrolledUnderElevation: 0.2,
  // surfaceTintColor: ,
  systemOverlayStyle: customSystemUiOverlayStyle,
  titleTextStyle: TextStyle(
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w800,
    fontSize: 20.0,
  ),
);

const SystemUiOverlayStyle customSystemUiOverlayStyle = SystemUiOverlayStyle(
  statusBarColor: Colors.white,
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.light,
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.white,
  systemNavigationBarContrastEnforced: true,
  systemNavigationBarDividerColor: Colors.white,
  systemStatusBarContrastEnforced: true,
);
