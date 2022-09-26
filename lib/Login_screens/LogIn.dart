import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';

class Login_page1 extends StatefulWidget {
  const Login_page1({Key? key}) : super(key: key);

  @override
  State<Login_page1> createState() => _Login_page1State();
}

// ignore: camel_case_types
class _Login_page1State extends State<Login_page1> {
  Widget _textConnection() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25),
          child: const Text(
            "Connexion",
            style: TextStyle(
              fontSize: 39,
              fontFamily: 'DemiBold',
            ),
          ),
        ),
        Container(
          child: Text(
            "Entrez votre email et votre mot de passe pour accéder à votre compte Noly",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Regular',
              color: Color(0xffB0B0B0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _textCreeCompt() {
    return Container(
      margin: const EdgeInsets.only(top: 22),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Créez un compte',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff54BAAA),
                fontFamily: 'Medium',
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Créez un compte Clicked');
                }),
        ]),
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
            Column(
              children: [
                noly_logo,
                _textConnection(),
                _textCreeCompt(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
