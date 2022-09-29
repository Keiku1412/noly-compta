import 'package:flutter/material.dart';

class Noly_logo extends StatelessWidget {
  Noly_logo();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 4.7),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/logos/noly_logo.png',
          ),
          scale: 1.10,
        ),
      ),
    );
  }
}

class Cloud_bg extends StatelessWidget {
  Cloud_bg();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height - 110,
      right: MediaQuery.of(context).size.width - 140,
      child: Container(
        height: (MediaQuery.of(context).size.height / 6),
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: FractionalOffset(
              -0.55,
              -1.0,
            ),
            scale: 1,
            image: AssetImage(
              "assets/images/shapes/cloud_bg.png",
            ),
          ),
        ),
      ),
    );
  }
}

var noly_background = Container(
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/bg.png"),
      fit: BoxFit.fill,
    ),
  ),
);
