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
  Widget _buildTextConnection() {
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

  Widget _buildTextCreatAccount() {
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
                  print('Create an Account Clicked');
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

  Widget _buildConnectButton() {
    return SizedBox(
      height: 44.5,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Se connecter',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'DemiBold',
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xff55BBA8),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // <-- Radius
          ),
        ),
      ),
    );
  }

  Widget _buildTextForgetPassword() {
    return Container(
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Mot de passe oublié ?',
              style: TextStyle(
                fontSize: 10,
                color: Color(0xff4DB1D9),
                fontFamily: 'Medium',
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Forget password Clicked');
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
            SingleChildScrollView(
              child: Column(
                children: [
                  noly_logo,
                  SizedBox(
                    height: 26,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
                      child: _buildTextConnection()),
                  SizedBox(
                    height: 22,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
                      child: _buildTextCreatAccount()),
                  SizedBox(
                    height: 81,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
                      child: _buildEmailTF()),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
                      child: _buildPasswordlTF()),
                  SizedBox(
                    height: 47,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
                      child: _buildConnectButton()),
                  SizedBox(
                    height: 43,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
                      child: _buildTextForgetPassword()),
                  Positioned(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 220,
                      width: 220,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/cloud_bg.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
