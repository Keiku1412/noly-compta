import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/cards.dart';

import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';
import 'package:nolycompta/constant/progress_bar_ac.dart';

import '../../constant/nolylogo_bg.dart';

class Create_Account1 extends StatefulWidget {
  const Create_Account1({Key? key}) : super(key: key);

  @override
  State<Create_Account1> createState() => _Create_Account1();
}

int step = 7;

// ignore: camel_case_types
class _Create_Account1 extends State<Create_Account1> {
  void _next_card() {
    setState(() {
      print("card clicked from set state");
      if (step > 54) {
        print('step 6');
        step = 60;
      } else {
        step += 12;
      }
      if (step == 19) {
        print('step 2');
      } else if (step == 31) {
        print('step 3');
      } else if (step == 43) {
        print('step 4');
      } else if (step == 55) {
        print('step 5');
      }
    });
  }

  void _next_card2() {
    setState(() {
      print("card clicked from set state");
      step = 7;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            noly_background,
            Cloud_bg(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Noly_logo(),
                  Sized_Box(17),
                  Headline('Créez un compte'),
                  Sized_Box(70),
                  //1 = 7; 2=19; 3=31; 4=43; 5=55;6= 60;+12s
                  Progress_Bar_AC(step),
                  Sized_Box(50),

                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 1000),
                      reverseDuration: const Duration(milliseconds: 0),
                      child: (() {
                        if (step == 7) {
                          return Column(
                            key: Key('1'),
                            children: [
                              Sized_Box(12),
                              Cards_AC('Ma structure existe',
                                  'assets/images/logos/1_1.png', _next_card),
                              Sized_Box(95),
                              Cards_AC("Je n'ai pas de\nstructure existante",
                                  'assets/images/logos/1_2.png', _next_card),
                              Sized_Box(95),
                              Cards_AC('Je suis une \nmicro-entreprise',
                                  'assets/images/logos/1_3.png', _next_card),
                            ],
                          );
                        } else if (step == 19) {
                          return Column(
                            key: Key('2'),
                            children: [
                              Cards_AC('Association',
                                  'assets/images/logos/2_1.png', _next_card),
                              Sized_Box(500),
                              Cards_AC("Société commerciale",
                                  'assets/images/logos/2_2.png', _next_card2),
                              Sized_Box(500),
                              Cards_AC(
                                  'Entreprise individuelle\n(EIRL) et profession libérale',
                                  'assets/images/logos/2_3.png',
                                  _next_card),
                              Sized_Box(500),
                              Cards_AC('Société civile',
                                  'assets/images/logos/2_4.png', _next_card),
                              Sized_Box(500),
                              Cards_AC('Comité d\'entreprise',
                                  'assets/images/logos/2_5.png', _next_card),
                              Sized_Box(20),
                            ],
                          );
                        } else if (step == 31) {
                          return Column(
                            key: Key('3'),
                            children: [
                              Cards_AC_3(
                                  'test 3', 'assets/images/logos/2_1.png'),
                              Sized_Box(95),
                            ],
                          );
                        } else if (step == 43) {
                          return Column(
                            key: Key('4'),
                            children: [
                              Cards_AC('test 4', 'assets/images/logos/1_1.png',
                                  _next_card),
                              Sized_Box(95),
                              Cards_AC("test 4\nstructure existante",
                                  'assets/images/logos/1_2.png', _next_card),
                              Sized_Box(95),
                              Cards_AC('test 4 \nmicro-entreprise',
                                  'assets/images/logos/1_3.png', _next_card),
                            ],
                          );
                        } else if (step == 55) {
                          return Column(
                            key: Key('5'),
                            children: [
                              Cards_AC('test 5', 'assets/images/logos/1_1.png',
                                  _next_card),
                              Sized_Box(95),
                              Cards_AC("test 5\nstructure existante",
                                  'assets/images/logos/1_2.png', _next_card),
                              Sized_Box(95),
                              Cards_AC('test 5 \nmicro-entreprise',
                                  'assets/images/logos/1_3.png', _next_card),
                            ],
                          );
                        } else if (step == 60) {
                          return Column(
                            key: Key('6'),
                            children: [
                              Cards_AC('test 6', 'assets/images/logos/1_1.png',
                                  _next_card),
                              Sized_Box(95),
                              Cards_AC("test 6\nstructure existante",
                                  'assets/images/logos/1_2.png', _next_card),
                              Sized_Box(95),
                              Cards_AC('test 6 \nmicro-entreprise',
                                  'assets/images/logos/1_3.png', _next_card),
                              Cards_AC('Comité d\'entreprise',
                                  'assets/images/logos/1_3.png', _next_card),
                              Cards_AC('Comité d\'entreprise',
                                  'assets/images/logos/1_3.png', _next_card),
                            ],
                          );
                        }
                      }())),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
