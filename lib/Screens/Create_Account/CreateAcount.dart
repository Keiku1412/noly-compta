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
        step = 60;
      } else {
        step += 12;
      }
      if (step == 19) {
        print('step 2');
      }
    });
  }

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
                  Sized_Box(70),
                  //1 = 7; 2=19; 3=31; 4=43; 5=55;6= 60;+12s
                  Progress_Bar_AC(step),
                  Sized_Box(13),
                  Cards_AC('Ma structure existe', 'assets/images/logos/1_1.png',
                      _next_card),
                  Sized_Box(95),
                  Cards_AC("Je n'ai pas de\nstructure existante",
                      'assets/images/logos/1_2.png', _next_card),
                  Sized_Box(95),
                  Cards_AC('Je suis une \nmicro-entreprise',
                      'assets/images/logos/1_3.png', _next_card),
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 1000),
                      child: (() {
                        if (1 == 2) {
                          return Container(
                            key: ValueKey<int>(0),
                            width: 100,
                            height: 100,
                            color: Colors.red,
                          );
                        } else {
                          return Container(
                            key: ValueKey<int>(1),
                            width: 100,
                            height: 100,
                            color: Colors.blue,
                          );
                          ;
                        }
                      }())),
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
