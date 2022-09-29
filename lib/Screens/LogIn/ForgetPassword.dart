import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';

import '../../constant/buttons.dart';
import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';
import 'PasswordVerification.dart';

class Forget_Paswword extends StatefulWidget {
  const Forget_Paswword({Key? key}) : super(key: key);

  @override
  State<Forget_Paswword> createState() => _Forget_PaswwordState();
}

// ignore: camel_case_types
class _Forget_PaswwordState extends State<Forget_Paswword> {
  void goto(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Password_Verification()),
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
                  Sized_Box(19),
                  Headline('Récupérer mon mot de passe'),
                  Sized_Box(10),
                  Text_Field('Entrez votre email',
                      'assets/images/icons/E-mail.png', false),
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
