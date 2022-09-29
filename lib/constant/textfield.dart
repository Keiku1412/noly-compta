import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/const.dart';

class Text_Field extends StatelessWidget {
  final String title;
  final String logo;
  final bool obscure;

  Text_Field(
    this.title,
    this.logo,
    this.obscure,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Medium',
            ),
          ),
          SizedBox(
            height: 5,
            width: 5,
          ),
          Container(
            height: 44,
            child: Neumorphic(
              style: text_field_innershadow,
              child: TextFormField(
                /*validator: (( value) {
                  if (value.trim().isEmpty) {
                return 'Please enter your email address';
              }
              // Check if the entered email has the right format
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              // Return null if the entered email is valid
              return null;
            },),*/
                obscureText: obscure,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(right: 22),
                  prefixIcon: Image.asset(
                    logo,
                    width: 50,
                    height: 55,
                    alignment: Alignment.centerLeft,
                  ),
                  focusedBorder: text_field_focused,
                  enabledBorder: text_field_unfocused,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

var text_field_innershadow = NeumorphicStyle(
  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(55)),
  color: Colors.transparent,
  depth: -3,
  shadowDarkColorEmboss: greencol,
);

// focused text field status
var text_field_focused = OutlineInputBorder(
  borderSide: BorderSide(color: greencol, width: 3),
  borderRadius: BorderRadius.circular(25.0),
);

// unfocused text field status
var text_field_unfocused = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(25.0),
  ),
  borderSide: BorderSide(
    color: greencol,
    width: 1,
  ),
);
