import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stinky_fish/Screens/CustomerProfile.dart';
import 'package:stinky_fish/Screens/sales.dart';
import 'Screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
          primaryColor: Color(0XFFAF96E5),
          textTheme: GoogleFonts.openSansTextTheme()),
      home: Home(),
    );
  }
}
