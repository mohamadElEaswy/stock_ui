import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/colors/styles.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/markets_page/markets_card_header_item.dart';

class VerticalMarketsList extends StatelessWidget {
  const VerticalMarketsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: ListView.separated(
        itemCount: 4,
        physics: AppStyles.globalScrollPhysics,
        itemBuilder: (BuildContext context, int index) =>
            const VerticalMarketItemBuilder(),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 16),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
