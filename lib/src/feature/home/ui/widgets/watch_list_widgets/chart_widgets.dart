import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/core/resources/theme/colors/colors.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/watch_list_widgets/watchlist_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget(
      {super.key, this.height, this.width, this.color, this.indicatorColor});
  final double? height;
  final double? width;
  final Color? color;
  final Color? indicatorColor;

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
        enable: true,
        // borderColor: Colors.red,
        borderWidth: 1,
        color: AppColors.darkBlue,
        format: 'point.y%',
        tooltipPosition: TooltipPosition.pointer,
        builder: (dynamic data, dynamic point, dynamic series, int pointIndex,
            int seriesIndex) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'PointIndex : ${pointIndex.toString()}',
              style: const TextStyle(color: Colors.white),
            ),
          );
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: widget.height ?? 12.h,
        width: widget.width ?? 19.h,
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          backgroundColor: widget.color ?? Colors.white,
          borderWidth: 0.0,
          margin: EdgeInsets.zero,
          tooltipBehavior: _tooltipBehavior,
          primaryXAxis: CategoryAxis(
            axisLine: const AxisLine(
              width: 0,
              dashArray: <double>[0, 0],
            ),
            labelIntersectAction: AxisLabelIntersectAction.hide,
            edgeLabelPlacement: EdgeLabelPlacement.hide,
            majorGridLines: const MajorGridLines(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            labelsExtent: 0.0,
          ),
          primaryYAxis: CategoryAxis(
            majorGridLines: const MajorGridLines(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            axisLine: const AxisLine(
              width: 0,
              dashArray: <double>[0, 0],
            ),
            labelIntersectAction: AxisLabelIntersectAction.hide,
            edgeLabelPlacement: EdgeLabelPlacement.hide,
            axisBorderType: AxisBorderType.withoutTopAndBottom,
            labelsExtent: 0.0,
            borderWidth: 0.0,
          ),
          series: <ChartSeries>[
            // Renders spline chart
            SplineSeries<ChartData, int>(
              dataSource: chartData,
              splineType: SplineType.natural,
              cardinalSplineTension: 0.5,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              enableTooltip: true,
              color: widget.indicatorColor,
            ),
          ],
        ),
      ),
    );
  }
}
