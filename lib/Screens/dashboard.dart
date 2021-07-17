import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stinky_fish/icons/CustomIcons.dart';
import 'package:stinky_fish/widgets/homeStatCard.dart';
import 'package:stinky_fish/widgets/progressIndicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: height * 0.1,
                  width: width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFAF96E5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomPaint(
                              foregroundPainter: ProjectProgressIndicator(
                                  circlewidth: width * 0.15,
                                  completedColor: Color(0XFF75D77A),
                                  completedpercentage: 80),
                              child: Center(
                                child: Text(
                                  '80%',
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'StoreStatus',
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'Really Good',
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                HomeStatCard(
                  height: height,
                  width: width,
                  icon: CustomIcons.sales,
                  maintext: 'Total Sales',
                  subtext: '\$666',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeStatCard(
                  height: height,
                  width: width,
                  icon: CustomIcons.earning,
                  maintext: 'Total Profit',
                  subtext: '\$420',
                ),
                HomeStatCard(
                  height: height,
                  width: width,
                  icon: CustomIcons.cost,
                  maintext: 'Total Cost',
                  subtext: '\$49',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: _buildSplineAreaChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height * 0.4,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Customers",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.darkerGrotesque(
                            color: Colors.grey,
                            fontSize: 23,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://greenlemon.me/wp-content/uploads/2019/07/Ozzy-Osbourne-686x1024.jpg',
                              ),
                            ),
                            title: Text(
                              "Ozzy Osbourne",
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              "Black Sabbath",
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  SfCartesianChart _buildSplineAreaChart() {
    return SfCartesianChart(
      legend: Legend(
          isVisible: true,
          opacity: 0.7,
          position: LegendPosition.top,
          alignment: ChartAlignment.far),
      title: ChartTitle(
          text: 'Earnings',
          alignment: ChartAlignment.near,
          textStyle: GoogleFonts.darkerGrotesque(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600)),
      primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0), labelRotation: 0),
      //       NumericAxis(

      // interval: 1,
      // majorGridLines: const MajorGridLines(width: 0),
      // edgeLabelPlacement: EdgeLabelPlacement.shift),
      primaryYAxis: NumericAxis(
          isVisible: false,
          labelFormat: '',
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0)),
      series: _getSplieAreaSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  /// Returns the list of chart series
  /// which need to render on the spline area chart.
  List<ChartSeries<_SplineAreaData, String>> _getSplieAreaSeries() {
    final List<_SplineAreaData> chartData = <_SplineAreaData>[
      _SplineAreaData("Jan", 10.53, 3.3),
      _SplineAreaData("Feb", 9.5, 5.4),
      _SplineAreaData("Mar", 10, 2.65),
      _SplineAreaData("Apr", 9.4, 2.62),
      _SplineAreaData("May", 5.8, 1.99),
      _SplineAreaData("Jun", 4.9, 1.44),
      _SplineAreaData("Jul", 4.5, 2),
      _SplineAreaData("Aug", 3.6, 1.56),
      _SplineAreaData("Sep", 3.43, 2.1),
    ];
    return <ChartSeries<_SplineAreaData, String>>[
      SplineAreaSeries<_SplineAreaData, String>(
        dataSource: chartData,
        color: Color(0XFFAF96E5),
        borderColor: Color(0XFFAF96E5),
        borderWidth: 2,
        name: 'Sales',
        xValueMapper: (_SplineAreaData sales, _) => sales.year,
        yValueMapper: (_SplineAreaData sales, _) => sales.y1,
      ),
      SplineAreaSeries<_SplineAreaData, String>(
        dataSource: chartData,
        borderColor: const Color.fromRGBO(192, 108, 132, 1),
        color: const Color.fromRGBO(192, 108, 132, 0.6),
        borderWidth: 2,
        name: 'Profit',
        xValueMapper: (_SplineAreaData sales, _) => sales.year,
        yValueMapper: (_SplineAreaData sales, _) => sales.y2,
      )
    ];
  }
}

class _SplineAreaData {
  _SplineAreaData(this.year, this.y1, this.y2);
  final String year;
  final double y1;
  final double y2;
}
