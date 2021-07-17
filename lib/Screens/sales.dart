import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerSales extends StatefulWidget {
  CustomerSales({Key? key}) : super(key: key);

  @override
  _CustomerSalesState createState() => _CustomerSalesState();
}

class _CustomerSalesState extends State<CustomerSales>
    with SingleTickerProviderStateMixin {
  late TabController _customerSaleTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _customerSaleTabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://mir-s3-cdn-cf.behance.net/project_modules/1400/9b3a0223368963.563229c47e93f.png"),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ichico Kurosaki",
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "98XXXXXXXX",
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Ichico@Kurosaki",
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ])),
              ),
              TabBar(
                  controller: _customerSaleTabController,
                  automaticIndicatorColorAdjustment: false,
                  // indicator: ShapeDecoration(
                  //   color: Theme.of(context).primaryColor,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(width * 0.1),
                  //   ),
                  // ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Color(0XFF9B7BDC),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Color(0XFF9B7BDC),
                  labelPadding:
                      EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  isScrollable: false,
                  tabs: [Text('Invoice'), Text('Recipt')]),
              Container(
                height: height * 0.6,
                child: TabBarView(
                    controller: _customerSaleTabController,
                    children: [
                      ExpansionTile(
                        leading: Container(
                          height: height * 0.08,
                          width: width * 0.2,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFF9F5FC),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.wallet_giftcard,
                              size: 25,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        title: Text(
                          "Invoice #: INV?KK-13",
                          style: GoogleFonts.darkerGrotesque(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "2020-05-07 - ",
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "2020-05-07",
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Amount: Rs 15000",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "PAID",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Due: Rs 1000",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        leading: Container(
                          height: height * 0.08,
                          width: width * 0.2,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFF9F5FC),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.wallet_giftcard,
                              size: 25,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        title: Text(
                          "Invoice #: INV?KK-13",
                          style: GoogleFonts.darkerGrotesque(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "2020-05-07",
                          style: GoogleFonts.darkerGrotesque(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              "Descripton about payment",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.darkerGrotesque(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Amount: Rs 15000",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Cash",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.darkerGrotesque(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              )
            ],
          ),
        ));
  }
}
