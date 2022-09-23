import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';

class Login_page1 extends StatefulWidget {
  const Login_page1({Key? key}) : super(key: key);

  @override
  State<Login_page1> createState() => _Login_page1State();
}

class _Login_page1State extends State<Login_page1> {
  Widget _textConnection() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 45),
          height: 48,
          child: Text(
            "Connexion",
            style: TextStyle(fontSize: 39),
          ),
        ),
        Container(
          height: 15,
          child: Text(
            "Entrez votre email et votre mot de passe pour accéder à votre compte Noly",
            style: TextStyle(
              fontSize: 10,
              color: Color(0xffB0B0B0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _textCreeCompt() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 30,
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Créez un compte',
              style: TextStyle(
                color: Color(0xff54BAAA),
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
