import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:another_flushbar/flushbar.dart';

String? title;

Future Custom_snackbar(BuildContext context, title) {
  return Flushbar(
    flushbarPosition: FlushbarPosition.BOTTOM,
    flushbarStyle: FlushbarStyle.FLOATING,
    forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    messageText: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, fontFamily: 'DemiBold', color: Colors.white
          // color: Color(0xffB0B0B0),
          ),
    ),
    margin: EdgeInsets.only(
      left: 60,
      right: 60,
      bottom: 25,
    ),
    borderRadius: BorderRadius.circular(20),
    backgroundColor: Colors.red,
    boxShadows: [
      BoxShadow(
          color: fadebluecol,
          offset: Offset(0.0, 15.0),
          blurRadius: 25.0,
          spreadRadius: 1)
    ],
    // backgroundGradient: LinearGradient(colors: [Colors.red, greencol]),
    duration: Duration(seconds: 5),
  ).show(context);
}
