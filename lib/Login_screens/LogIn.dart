import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'E-mail',
          style: TextStyle(
            fontSize: 14,
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
              decoration: InputDecoration(
                prefixIcon: Image.asset(
                  'assets/images/E-mail.png',
                  fit: BoxFit.fill,
                ),
                focusedBorder: text_field_focused,
                enabledBorder: text_field_unfocused,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordlTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Mot de passe',
          style: TextStyle(
            fontSize: 14,
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
              decoration: InputDecoration(
                prefixIcon: Image.asset(
                  'assets/images/Password.png',
                  fit: BoxFit.fill,
                ),
                focusedBorder: text_field_focused,
                enabledBorder: text_field_unfocused,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            noly_background,
            Padding(
              padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    noly_logo,
                    SizedBox(
                      height: 25,
                    ),
                    _textConnection(),
                    SizedBox(
                      height: 22,
                    ),
                    _textCreeCompt(),
                    SizedBox(
                      height: 81,
                    ),
                    _buildEmailTF(),
                    SizedBox(
                      height: 15,
                    ),
                    _buildPasswordlTF(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
