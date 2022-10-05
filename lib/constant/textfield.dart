import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/const.dart';

class Text_Field extends StatelessWidget {
  //GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  final String title;
  final String logo;
  final Function _validator;
  final bool obscure;

  Text_Field(this.title, this.logo, this.obscure, this._validator);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Medium',
              ),
            ),
          ),
          SizedBox(
            height: 5,
            width: 5,
          ),
          Stack(
            children: [
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width - 82,
                child: Neumorphic(style: text_field_innershadow),
              ),
              TextFormField(
                validator: ((value) {
                  return _validator(value);
                }),
                autovalidateMode: AutovalidateMode.disabled,
                obscureText: obscure,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: greencol, width: 1.5),
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 25,
                  ),
                  prefixIcon: Image.asset(
                    logo,
                    width: 55,
                    height: 50,
                    scale: 0.9,
                    alignment: Alignment.centerLeft,
                  ),
                  focusedBorder: text_field_focused,
                  enabledBorder: text_field_unfocused,
                  errorStyle: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Medium',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

var vertfication_code_style = NeumorphicStyle(
  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
  color: Colors.transparent,
  depth: -3,
  shadowDarkColorEmboss: fadebluecol,
);

var text_field_innershadow = NeumorphicStyle(
  // border: NeumorphicBorder(width: 5),
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
    width: 1.5,
  ),
);
