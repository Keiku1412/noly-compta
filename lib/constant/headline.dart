import 'package:flutter/material.dart';

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
