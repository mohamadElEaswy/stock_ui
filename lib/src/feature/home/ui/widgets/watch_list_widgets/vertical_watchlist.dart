import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/colors/styles.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/watch_list_widgets/watchlist_card.dart';

class VerticalWatchList extends StatelessWidget {
  const VerticalWatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: ListView.separated(
        itemCount: 4,
        physics: AppStyles.globalScrollPhysics,
        itemBuilder: (BuildContext context, int index) =>
            const VerticalItemBuilder(),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 16),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
