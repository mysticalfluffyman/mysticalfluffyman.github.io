import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int selected = 0;

  static List<charts.Series<MyRow, DateTime>> _createSampleData() {
    final data = [
      new MyRow(new DateTime(2017, 9, 25), 6),
      new MyRow(new DateTime(2017, 9, 26), 8),
      new MyRow(new DateTime(2017, 9, 27), 6),
      new MyRow(new DateTime(2017, 9, 28), 9),
      new MyRow(new DateTime(2017, 9, 29), 11),
      new MyRow(new DateTime(2017, 9, 30), 15),
      new MyRow(new DateTime(2017, 10, 01), 25),
      new MyRow(new DateTime(2017, 10, 02), 33),
      new MyRow(new DateTime(2017, 10, 03), 27),
      new MyRow(new DateTime(2017, 10, 04), 31),
      new MyRow(new DateTime(2017, 10, 05), 23),
    ];

    return [
      new charts.Series<MyRow, DateTime>(
        id: 'Cost',
        domainFn: (MyRow row, _) => row.timeStamp,
        measureFn: (MyRow row, _) => row.cost,
        data: data,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.ytimg.com/vi/LsSHfvwJm5o/maxresdefault.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("User")),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 5),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: constraints.maxHeight * 0.9,
                      width: constraints.maxWidth * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              setState(() {
                                selected = 0;
                              });
                            },
                            leading: Icon(Icons.dashboard_customize,
                                color:
                                    selected == 0 ? Colors.blue : Colors.black),
                            title: Text(
                              "Report",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selected == 0
                                      ? Colors.blue
                                      : Colors.black),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            leading: Icon(Icons.money,
                                color:
                                    selected == 1 ? Colors.blue : Colors.black),
                            title: Text(
                              "Sales",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selected == 1
                                      ? Colors.blue
                                      : Colors.black),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              setState(() {
                                selected = 2;
                              });
                            },
                            leading: Icon(Icons.person,
                                color:
                                    selected == 2 ? Colors.blue : Colors.black),
                            title: Text(
                              "Account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selected == 2
                                      ? Colors.blue
                                      : Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Scrollbar(
                    child: SingleChildScrollView(
                      child: Container(
                        height: constraints.maxHeight * 0.945,
                        width: constraints.maxWidth * 0.82,
                        child: ListView(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: constraints.maxHeight * 0.5,
                                    width: constraints.maxWidth * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(offset: Offset(1, 2))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: charts.TimeSeriesChart(
                                          _createSampleData(),
                                          animate: true,

                                          /// Customize the gridlines to use a dash pattern.
                                          primaryMeasureAxis: new charts
                                                  .NumericAxisSpec(
                                              renderSpec:
                                                  charts.GridlineRendererSpec(
                                                      lineStyle:
                                                          charts.LineStyleSpec(
                                            dashPattern: [4, 4],
                                          )))),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 20),
                                  child: Container(
                                    height: constraints.maxHeight * 0.5,
                                    width: constraints.maxWidth * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(offset: Offset(1, 2))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    height: constraints.maxHeight * 0.5,
                                    width: constraints.maxWidth * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(offset: Offset(1, 2))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 20),
                                  child: Container(
                                    height: constraints.maxHeight * 0.5,
                                    width: constraints.maxWidth * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(offset: Offset(1, 2))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          );
        }));
  }
}

class MyRow {
  final DateTime timeStamp;
  final int cost;
  MyRow(this.timeStamp, this.cost);
}
