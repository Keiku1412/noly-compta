import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

var noly_background = Container(
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/bg.png"),
      fit: BoxFit.fill,
    ),
  ),
);
var noly_logo = Container(
  height: 185,
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage(
        'assets/images/noly_logo.png',
      ),
      scale: 1.10,
    ),
  ),
);
var text_field_innershadow = NeumorphicStyle(
  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(55)),
  color: Colors.transparent,
  depth: -3,
  shadowDarkColorEmboss: Color(0xff54BAA6),
);

var text_field_focused = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xff54BAA6), width: 1.7),
  borderRadius: BorderRadius.circular(25.0),
);

var text_field_unfocused = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(25.0),
  ),
  borderSide: BorderSide(
    color: Color(0xff54BAA6),
    width: 1,
  ),
);
