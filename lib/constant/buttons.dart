import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';

class Button_wide extends StatelessWidget {
  final String title;
  final Function x;
  Button_wide(this.x, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: SizedBox(
        height: 48.5,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: fadebluecol,
                blurRadius: 30,
                spreadRadius: 0.5,
                offset: Offset(0, 12),
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              x(context);
            },
            child: Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'DemiBold',
              ),
            ),
            style: ElevatedButton.styleFrom(
              shadowColor: fadebluecol,
              foregroundColor: Colors.white,
              backgroundColor: greencol,
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25), // <-- Radius
              ),
            ),
          ),
        ),
      ),
    );
  }
}
