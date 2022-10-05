import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';

class Cards_AC extends StatelessWidget {
  final String title;
  final String image;

  Cards_AC(this.title, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cards_decoration,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 109,
      width: 390,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              width: (MediaQuery.of(context).size.width / 4),
              height: 70,
              alignment: Alignment.center,
            ),
            Container(
              width: 210,
              child: Text(
                title,
                maxLines: 3,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'DemiBold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
