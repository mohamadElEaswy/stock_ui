import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stock_ui/src/feature/home/ui/widgets/watch_list_widgets/watchlist_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 12.h,
        width: 19.h,
        child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          backgroundColor: Colors.white,
          borderWidth: 0.0,
          margin: EdgeInsets.zero,
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
              cardinalSplineTension: 0.9,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
            ),
          ],
        ),
      ),
    );
  }
}
