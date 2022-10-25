import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/textfield.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Progress_Bar_AC extends StatelessWidget {
  int i = 0;

  Widget Circle_check(x) {
    return Neumorphic(
      style: text_field_innershadow,
      child: Container(
          //width: 41,
          //height: 20,
          child: Icon(
            Icons.check,
            color: Color.fromARGB(255, 234, 237, 238),
            size: 17,
          ),
          decoration:
              BoxDecoration(color: x, shape: BoxShape.circle, boxShadow: [
            BoxShadow(
              color: Colors.transparent,
              blurRadius: 20.0,
              spreadRadius: 0.8,
              offset: Offset(
                1.0,
                3.0,
              ),
            ),
          ])),
    );
  }

  Progress_Bar_AC(this.i);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        // color: Colors.red,
        width: 250,
        height: 20,
        child: Stack(
          children: [
            Center(
              child: LinearPercentIndicator(
                padding: EdgeInsets.only(left: 11),
                width: 235,
                restartAnimation: false,
                animateFromLastPercent: true,
                animationDuration: 800,
                animation: true,
                lineHeight: 4.2,
                percent: (i / 60),
                backgroundColor: Color.fromARGB(255, 234, 237, 238),
                linearGradient: LinearGradient(
                  stops: [0.95, 1],
                  colors: <Color>[
                    greencol,
                    Color.fromARGB(255, 234, 237, 238),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Circle_check(checkcolor(i + 8)),
                SizedBox(
                  width: 28,
                ),
                Circle_check(checkcolor(i)),
                SizedBox(
                  width: 28,
                ),
                Circle_check(checkcolor(i - 14)),
                SizedBox(
                  width: 28,
                ),
                Circle_check(checkcolor(i - 26)),
                SizedBox(
                  width: 28,
                ),
                Circle_check(checkcolor(i - 38)),
                SizedBox(
                  width: 28,
                ),
                Circle_check(checkcolor(i - 48)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color checkcolor(i) {
  if (i > 10) {
    return greencol;
  } else {
    return Color.fromARGB(255, 234, 237, 238);
  }
}
