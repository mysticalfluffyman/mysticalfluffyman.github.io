import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      this.productName,
      this.totalSold,
      this.totalLeft,
      this.unitName})
      : super(key: key);
  final String? productName;
  final double? totalSold;
  final double? totalLeft;
  final String? unitName;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: height * 0.1,
        width: width * 0.9,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productName!,
                  style:
                      GoogleFonts.aBeeZee(color: Colors.black, fontSize: 15)),
              Text("Current Stock: $totalLeft $unitName",
                  style: GoogleFonts.abel(color: Colors.black, fontSize: 13)),
              Text("Total Sold: $totalSold $unitName",
                  style: GoogleFonts.abel(color: Colors.black, fontSize: 13)),
            ],
          ),
          Container(width: 200, child: _buildDefaultSplineChart())
        ]));
  }
}

/// Returns the defaul spline chart.
SfCartesianChart _buildDefaultSplineChart() {
  return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
          isVisible: false,
          majorGridLines: const MajorGridLines(width: 0),
          axisLine: AxisLine(width: 0)),
      primaryYAxis: NumericAxis(
        isVisible: false,
        majorGridLines: const MajorGridLines(width: 0),
        axisLine: const AxisLine(width: 0),
      ),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: _getDefaultSplineSeries());
}

/// Returns the list of chart series which need to render on the spline chart.
List<SplineSeries<ChartSampleData, String>> _getDefaultSplineSeries() {
  final List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData(x: 'Jan', y: 43),
    ChartSampleData(x: 'Feb', y: 45),
    ChartSampleData(x: 'Mar', y: 50),
    ChartSampleData(x: 'Apr', y: 55),
    ChartSampleData(x: 'May', y: 63),
    ChartSampleData(x: 'Jun', y: 68),
    ChartSampleData(x: 'Jul', y: 72),
    ChartSampleData(x: 'Aug', y: 70),
    ChartSampleData(x: 'Sep', y: 66),
    ChartSampleData(x: 'Oct', y: 57),
    ChartSampleData(x: 'Nov', y: 50),
    ChartSampleData(x: 'Dec', y: 45)
  ];
  return <SplineSeries<ChartSampleData, String>>[
    SplineSeries<ChartSampleData, String>(
      dataSource: chartData,
      xValueMapper: (ChartSampleData sales, _) => sales.x as String,
      yValueMapper: (ChartSampleData sales, _) => sales.y,
    )
  ];
}

class ChartSampleData {
  /// Holds the datapoint values like x, y, etc.,
  ChartSampleData({
    this.x,
    this.y,
    this.xValue,
    this.yValue,
  });

  /// Holds x value of the datapoint
  final dynamic x;

  /// Holds y value of the datapoint
  final num? y;

  /// Holds x value of the datapoint
  final dynamic xValue;

  /// Holds y value of the datapoint
  final num? yValue;
}
