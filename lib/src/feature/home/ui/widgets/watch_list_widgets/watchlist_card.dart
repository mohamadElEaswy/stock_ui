import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/core/utils/extinsions/sized_box_extinsion.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/watch_list_widgets/chart_widgets.dart';

class VerticalItemBuilder extends StatelessWidget {
  const VerticalItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.globalGreyColor),
        // color: AppColors.darkBlue,
      ),
      height: 37.h,
      width: 67.2.w,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: AppColors.globalGreyColor,
                    radius: 20.sp,
                    child: const Icon(
                      Icons.paypal,
                      color: AppColors.darkBlue,
                    ),
                  ),
                ),
                8.sw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ADB',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 10.sp,
                          ),
                    ),
                    Text(
                      'Adobe Inc',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 7.sp,
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  CupertinoIcons.arrow_up,
                  color: AppColors.lightGreen,
                  size: 11.sp,
                ),
                Text(
                  '5.49%',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.lightGreen,
                        fontWeight: FontWeight.w800,
                        fontSize: 8.sp,
                      ),
                ),
              ],
            ),
          ),
          16.sh,
          Flexible(
            flex: 2,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '33.49',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColors.darkBlue,
                                fontWeight: FontWeight.w800,
                                fontSize: 14.sp,
                              ),
                    ),
                    Text(
                      '\$643.58',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 8.sp,
                          ),
                    ),
                  ],
                ),
                const ChartWidget()
              ],
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
  ChartData(2014, 40)
];
