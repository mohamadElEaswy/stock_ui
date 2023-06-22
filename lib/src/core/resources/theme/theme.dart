import 'package:flutter/material.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/resources/theme/theme_files/app_bar_theme.dart';
import 'package:stock_ui/src/core/resources/theme/theme_files/button_theme/elevated_button_theme.dart';
import 'package:stock_ui/src/core/resources/theme/theme_files/button_theme/outlined_button_theme.dart';
import 'package:stock_ui/src/core/resources/theme/theme_files/button_theme/text_button_theme.dart';
import 'package:stock_ui/src/core/resources/theme/theme_files/text_theme/text_theme.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
    // use material 3
    // defining scheme colors
    // colorScheme: ColorScheme.fromSwatch(
    //   primarySwatch: GlobalsStyles.blueThemeColor,
    //   accentColor: Colors.blue.shade50,
    // ),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkBlue),
    // primarySwatch: GlobalsStyles.blueThemeColor,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    dividerColor: Colors.white,
    splashColor: AppColors.greyColor,
    indicatorColor: Colors.black87,

    outlinedButtonTheme: outlinedButtonTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    textButtonTheme: textButtonTheme,

    textTheme: textTheme,
    appBarTheme: appBarTheme,
  );

  /*
  static ThemeData darkThemeData = ThemeData(
    scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
    backgroundColor: CupertinoColors.darkBackgroundGray,

    fontFamily: 'Poppins',

    //mainly i use this "textTheme" styles in the home section title
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(color: GlobalsStyles.globalWhite),
        ),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: GlobalsStyles.globalWhite,
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    ),
  );
  */
}
