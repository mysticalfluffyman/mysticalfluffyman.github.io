import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeStatCard extends StatelessWidget {
  const HomeStatCard(
      {Key? key,
      this.height,
      this.width,
      this.icon,
      this.maintext,
      this.subtext})
      : super(key: key);
  final double? height, width;
  final IconData? icon;
  final String? subtext;
  final String? maintext;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height! * 0.1,
      width: width! * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
                child: Container(
                  height: height! * 0.08,
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
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      maintext!,
                      style: GoogleFonts.darkerGrotesque(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      subtext!,
                      style: GoogleFonts.darkerGrotesque(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
