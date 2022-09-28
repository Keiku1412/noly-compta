import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:nolycompta/constant/const.dart';

import 'ForgetPassword.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

// ignore: camel_case_types
class _LoginState extends State<Login> {
  //noly upper logo
  Widget _buildnolylogo(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 5),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/noly_logo.png',
          ),
          scale: 1.10,
        ),
      ),
    );
  }

//Text "CONNEXION entrez votre email et votre mot de passe etc"
  Widget _buildTextHeadline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
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
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Regular',
                color: Color(0xffB0B0B0),
              ),
            ),
          ),
        ],
      ),
    );
  }

//Text "Creez un compt"
  Widget _buildCreatAccount() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Créez un compte',
                style: TextStyle(
                  fontSize: 18,
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
      ),
    );
  }

  Widget _buildEmailTF() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'E-mail',
            style: TextStyle(
              fontSize: 18,
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
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(right: 22),
                  prefixIcon: Image.asset(
                    'assets/images/E-mail.png',
                    width: 50,
                    height: 55,
                    alignment: Alignment.centerLeft,
                  ),
                  focusedBorder: text_field_focused,
                  enabledBorder: text_field_unfocused,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordlTF() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Mot de passe',
            style: TextStyle(
              fontSize: 18,
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
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(right: 22),
                  prefixIcon: Image.asset(
                    'assets/images/Password.png',
                    width: 50,
                    height: 55,
                    alignment: Alignment.centerLeft,
                  ),
                  focusedBorder: text_field_focused,
                  enabledBorder: text_field_unfocused,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: SizedBox(
        height: 48.5,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Se connecter',
            style: TextStyle(
              fontSize: 22,
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
      ),
    );
  }

  Widget _buildForgetPassword() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Mot de passe oublié ?',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff4DB1D9),
                  fontFamily: 'Medium',
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Forget password Clicked');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Forget_Paswword()),
                    );
                  }),
          ]),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      height: (MediaQuery.of(context).size.height / 6),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.none,
          alignment: FractionalOffset(
            -0.55,
            -1.0,
          ),
          scale: 1,
          image: AssetImage(
            "assets/images/cloud_bg.png",
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
              child: Column(
                children: [
                  _buildnolylogo(context),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 19),
                    width: 26,
                  ),
                  _buildTextHeadline(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 50),
                    width: 22,
                  ),
                  _buildCreatAccount(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 15),
                    width: 81,
                  ),
                  _buildEmailTF(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 57),
                    width: 15,
                  ),
                  _buildPasswordlTF(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 17.5),
                    width: 47,
                  ),
                  _buildButton(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 28),
                    width: 43,
                  ),
                  _buildForgetPassword(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 80),
                    width: 43,
                  ),
                  _buildBackgroundImage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
