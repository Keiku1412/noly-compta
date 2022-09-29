import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/buttons.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';

import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';

class Password_Verification extends StatefulWidget {
  const Password_Verification({Key? key}) : super(key: key);

  @override
  State<Password_Verification> createState() => _Password_Verification();
}

// ignore: camel_case_types
class _Password_Verification extends State<Password_Verification> {
  void goto(context) {
    /*Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Password_Verification()),
    );*/
  }

  Widget _buildsubline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
        child: const Text(
          "Veuillez configurer votre nouveau mot de passe.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff55BBA8),
            fontSize: 14,
            fontFamily: 'Regular',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            noly_background,
            SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  Noly_logo(),
                  Sized_Box(28),
                  Headline('Récupérer mon mot de passe'),
                  Sized_Box(100),
                  _buildsubline(),
                  Sized_Box(13),
                  Sized_Box(57),
                  Text_Field('Nouveau mot de passe',
                      'assets/images/icons/Password.png', true),
                  Sized_Box(57),
                  Text_Field('Confirmez votre mot de passe',
                      'assets/images/icons/Password.png', true),
                  Sized_Box(17),
                  Button_wide(goto, 'Envoyer une confirmation'),
                  Sized_Box(50),
                ],
              ),
            ),
            Cloud_bg(),
          ],
        ),
      ),
    );
  }
}
