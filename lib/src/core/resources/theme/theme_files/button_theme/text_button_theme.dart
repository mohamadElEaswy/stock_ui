import 'package:flutter/material.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';

TextButtonThemeData textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    // padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
      (_) => const TextStyle(
        color: AppColors.lightGreen,
        fontWeight: FontWeight.w800,
      ),
    ),
  ),
);
