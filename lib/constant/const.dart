import 'package:flutter/material.dart';

var noly_background = Container(
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/bg.png"),
      fit: BoxFit.cover,
    ),
  ),
);
var noly_logo = Container(
  height: 165,
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage(
        'assets/images/noly_logo.png',
      ),
      scale: 1.10,
    ),
  ),
);
