import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/Screens/Create_Account/CreateAcount.dart';

import 'package:nolycompta/constant/const.dart';

import '../../constant/buttons.dart';
import '../../constant/headline.dart';
import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';
import 'ForgetPassword.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

// ignore: camel_case_types
class _LoginState extends State<Login> {
  void goto(context) {
    /*Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Password_Verification()),
    );*/
  }

  Widget _buildsubline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
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
                  color: greencol,
                  fontFamily: 'Medium',
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Create_Account1()),
                    );
                    print('Create an Account Clicked');
                  }),
          ]),
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
                  color: fadebluecol,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            noly_background,
            SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 30),
              reverse: true,
              child: Column(
                children: [
                  Noly_logo(),
                  Sized_Box(27),
                  Headline('Connexion'),
                  _buildsubline(),
                  Sized_Box(50),
                  _buildCreatAccount(),
                  Sized_Box(15),
                  Text_Field('E-mail', 'assets/images/icons/E-mail.png', false),
                  Sized_Box(57),
                  Text_Field(
                      'Mot de passe', 'assets/images/icons/Password.png', true),
                  Sized_Box(17.5),
                  Button_wide(goto, 'Se connecter'),
                  Sized_Box(28),
                  _buildForgetPassword(),
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
