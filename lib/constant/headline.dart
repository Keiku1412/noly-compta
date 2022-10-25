import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';

class Headline extends StatelessWidget {
  final String title;

  Headline(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        children: [
          Container(
            child: Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 39,
                fontFamily: 'DemiBold',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Text_Regular extends StatelessWidget {
  final String title;
  final Color color;

  Text_Regular(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Regular',
            color: color,
          ),
        ),
      ),
    );
  }
}
