import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stinky_fish/Screens/sales.dart';

class CustomerProfile extends StatefulWidget {
  CustomerProfile({Key? key}) : super(key: key);

  @override
  _CustomerProfileState createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  bool open = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              customerCard(
                  width: width,
                  height: height,
                  maintext: "Prabal Basnet",
                  subtext: "98XXXXXXXX",
                  icon: Icons.ac_unit_rounded)
            ],
          ),
        ),
      ),
    );
  }

  Widget customerCard(
      {double? height,
      double? width,
      IconData? icon,
      String? maintext,
      subtext}) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CustomerSales()));
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          height: open ? height! * 0.17 : height! * 0.11,
          width: width! * 0.95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: height * 0.08,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0XFFF9F5FC),
                        ),
                        child: Center(
                          child: Icon(
                            icon,
                            size: 25,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            maintext!,
                            style: GoogleFonts.darkerGrotesque(
                                color: Colors.purple,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            subtext!,
                            style: GoogleFonts.darkerGrotesque(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          open = !open;
                        });
                      },
                      child: RotatedBox(
                          quarterTurns: open ? 3 : 2,
                          child: Icon(Icons.arrow_back_ios_new)),
                    ),
                  ],
                ),
                open
                    ? Padding(
                        padding: EdgeInsets.only(left: width * 0.38),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "prabal@gmail.com",
                                style: GoogleFonts.darkerGrotesque(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Rs 1000",
                                style: GoogleFonts.darkerGrotesque(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(
                        height: 0,
                        width: 0,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
