import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("user")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("user")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("user")),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: constraints.maxHeight * 0.9,
                      width: constraints.maxWidth * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: Text("user")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: Text("user")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: Text("user")),
                          )
                        ],
                      ),
                    ),
                  ),
                  Scrollbar(
                    child: SingleChildScrollView(
                      child: Container(
                        height: constraints.maxHeight * 0.9,
                        width: constraints.maxWidth * 0.82,
                        child: ListView(
                          children: [
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
