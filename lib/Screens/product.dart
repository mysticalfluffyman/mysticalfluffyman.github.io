import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stinky_fish/widgets/productCard.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            ProductCard(
              productName: "Shit Ton Of Gold",
              totalSold: 300.0,
              totalLeft: 32.0,
              unitName: "Shit Ton",
            ),
            Divider(color: Colors.black26),
            ProductCard(
              productName: "A Sliver Of Silver",
              totalSold: 40.0,
              totalLeft: 32.0,
              unitName: "Sliver",
            )
          ],
        ),
      ),
    ));
  }
}
