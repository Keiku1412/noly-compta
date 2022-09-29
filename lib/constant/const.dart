import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//colors
var greencol = Color(0xff54BAAA);
var fadebluecol = Color(0xff57B2D8);

//app background image

// cards decoration
var cards_decoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(35)),
  boxShadow: [
    BoxShadow(
        color: fadebluecol,
        blurRadius: 60.0,
        spreadRadius: -40,
        offset: Offset(-6, 0))
  ],
);

class Sized_Box extends StatelessWidget {
  final double x;
  Sized_Box(this.x);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height / x),
      width: 22,
    );
  }
}
