import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//app background image
var noly_background = Container(
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/bg.png"),
      fit: BoxFit.fill,
    ),
  ),
);

//inner shadow for each text field
var text_field_innershadow = NeumorphicStyle(
  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(55)),
  color: Colors.transparent,
  depth: -3,
  shadowDarkColorEmboss: Color(0xff54BAA6),
);

// focused text field status
var text_field_focused = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xff54BAA6), width: 3),
  borderRadius: BorderRadius.circular(25.0),
);

// unfocused text field status
var text_field_unfocused = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(25.0),
  ),
  borderSide: BorderSide(
    color: Color(0xff54BAA6),
    width: 1,
  ),
);
