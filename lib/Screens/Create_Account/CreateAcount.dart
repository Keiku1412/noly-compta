import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/cards.dart';

import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';

import '../../constant/nolylogo_bg.dart';

class Create_Account1 extends StatefulWidget {
  const Create_Account1({Key? key}) : super(key: key);

  @override
  State<Create_Account1> createState() => _Create_Account1();
}

// ignore: camel_case_types
class _Create_Account1 extends State<Create_Account1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            noly_background,
            SingleChildScrollView(
              child: Column(
                children: [
                  Noly_logo(),
                  Sized_Box(17),
                  Headline('Créez un compte'),
                  Sized_Box(13),
                  Cards_AC(
                      'Ma structure existe', 'assets/images/logos/1_1.png'),
                  Sized_Box(95),
                  Cards_AC("Je n'ai pas de structure existante",
                      'assets/images/logos/1_2.png'),
                  Sized_Box(95),
                  Cards_AC('Je suis une micro-entreprise',
                      'assets/images/logos/1_3.png'),
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
