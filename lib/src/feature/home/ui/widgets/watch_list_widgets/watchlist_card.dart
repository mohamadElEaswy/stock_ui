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
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.globalGreyColor),
        // color: AppColors.darkBlue,
      ),
      height: 34.h,
      width: 67.2.w,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.globalGreyColor,
                  child: Icon(
                    Icons.paypal,
                    color: AppColors.darkBlue,
                  ),
                ),
                8.sw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ADB',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Adobe Inc',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  CupertinoIcons.arrow_up,
                  color: AppColors.lightGreen,
                  size: 12.sp,
                ),
                Text(
                  '5.49%',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.lightGreen,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ],
            ),
          ),
          32.sh,
          Flexible(
            flex: 5,
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
                              ),
                    ),
                    Text(
                      '\$643.58',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
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
