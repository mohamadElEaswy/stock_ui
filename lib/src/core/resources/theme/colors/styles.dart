import 'package:flutter/material.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';

class AppStyles {
  static const EdgeInsetsGeometry globalPadding = EdgeInsets.all(10);
  static const EdgeInsetsGeometry globalAppBarPadding = EdgeInsets.only(
    left: 10,
    right: 10,
  );
  // all styles of products title text
  static const TextStyle textStyleProductsTitle = TextStyle(
    fontSize: 12,
    color: AppColors.bluelColor,
    fontWeight: FontWeight.w700,
    // color: bluelColor,
  );

// products cards text style
  static const TextStyle textStyleProductsDescribtion = TextStyle(
    color: AppColors.filterBarTextColor,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle textStyleElevatedButtons = TextStyle(
    color: AppColors.offWhite,
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    overflow: TextOverflow.ellipsis,
  );
  static const TextStyle textStyleTextButtons = TextStyle(
    color: AppColors.offWhite,
    fontSize: 14.0,
  );

  static TextStyle accountTextStyles = TextStyle(
    fontSize: 12,
    color: Colors.grey.shade800,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle textFormInputTextStyles = TextStyle(
    color: AppColors.bluelColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textFormLableTextStyles = TextStyle(
    fontSize: 14.0,
    color: Colors.grey.shade400,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyleSearch = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  //single product price style
  static TextStyle textStyleSingleProductGreyHeader({
    required Color color,
    required TextDecoration textDecoration,
  }) =>
      TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        decoration: textDecoration,
      );
  static const TextStyle formHeaderTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black45,
    fontSize: 14,
  );

  static ButtonStyle completeElevatedButtonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)));

  static const EdgeInsets gloablPagePadding = EdgeInsets.all(20);

  static ScrollPhysics globalScrollPhysics = const BouncingScrollPhysics();

  static Curve curve = Curves.bounceOut;
}
