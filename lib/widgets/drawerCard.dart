import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerCard extends StatelessWidget {
  const DrawerCard({Key? key, this.icon, this.title}) : super(key: key);
  final IconData? icon;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Icon(
                  icon,
                  size: 25,
                  color: Color(0XFF9B7BDC),
                ),
              ),
            ),
          ),
        ),
        Text(
          title!,
          style: GoogleFonts.darkerGrotesque(
              color: Color(0XFF9B7BDC),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
