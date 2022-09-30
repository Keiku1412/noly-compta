import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';

import '../../constant/buttons.dart';
import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';
import 'PasswordVerification.dart';

class Test_page extends StatefulWidget {
  @override
  State<Test_page> createState() => _Test_page();
}

// ignore: camel_case_types
class _Test_page extends State<Test_page> {
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
                  Sized_Box(19),
                  Headline('test page'),
                  Sized_Box(10),
                  /*Text_Field(
                    'Entrez votre email',
                    'assets/images/icons/E-mail.png',
                    false,
                    _emailvalidator,
                  ),*/
                  Sized_Box(17),
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
