import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/utils/extinsions/sized_box_extinsion.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/watch_list_widgets/chart_widgets.dart';

class VerticalMarketItemBuilder extends StatelessWidget {
  const VerticalMarketItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.globalGreyColor),

        gradient: RadialGradient(colors: [
          // Theme.of(context).colorScheme.primary,
          // Theme.of(context).colorScheme.secondary,
          // Color(0xffFFD6FA),
          // Color(0xff95b9e4),
          AppColors.lightGreen.withOpacity(.3),
          // Color(0xffECDFE0),
          // Color(0xffECDFFF),
          // Colors.white,
          Colors.white,
          // Theme.of(context).colorScheme.secondary,
        ], radius: 0.7, center: Alignment.bottomCenter),

        // color: AppColors.darkBlue,
      ),
      height: 34.h,
      width: 55.2.w,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Down Jones',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.greyColor.withOpacity(.5),
                      ),
                ),
                Text(
                  '\$35,819.56',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.darkBlue),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.arrow_up,
                      color: AppColors.lightGreen,
                      size: 12.sp,
                    ),
                    Text(
                      '0.25%',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.lightGreen,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          16.sh,
          Flexible(
            flex: 2,
            child: ChartWidget(
              width: 60.w,
              color: Colors.white.withOpacity(0.0),
              indicatorColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}

final List<ChartData> chartData = [
  ChartData(2010, 35),
  ChartData(2011, 13),
  ChartData(2012, 34),
  ChartData(2013, 27),
  ChartData(2014, 40),
  ChartData(2010, 35),
  ChartData(2011, 10),
  ChartData(3012, 54),
  ChartData(2303, 22),
  ChartData(2100, 0),
];
