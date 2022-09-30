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

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  late String _useremail;
  late String _userpassword;

  late int x_valid;
  void goto(context) {
    final isValidForm = formKey.currentState!.validate();

    print('test button pressed');
    // x_valid = 0;
    //_useremail = "";
    //_userpassword = "";

    if (isValidForm) {
      print("everythiing is okay ready to go ");
    }
  }

  _emailvalidator(value) {
    if (value!.isEmpty) {
      // print('user email is ' + _useremail);
      print("ikhdim");
      // print(_autoValidate);
      return "enter ur email plz";
    } else {
      //setState(() => _autoValidate = true);
      // print("user email " + _useremail);
//_useremail = value;
      return null;
    }
  }

  /* _passwordvalidator(value) {
    if (value.isEmpty) {
      print('user password is empty ' + _userpassword);
      return "password is emty";
    } else {
      _useremail = value;
      return null;
    }
  }*/

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
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey,
                child: Column(
                  children: [
                    Noly_logo(),
                    Sized_Box(27),
                    Headline('Connexion'),
                    _buildsubline(),
                    Sized_Box(50),
                    _buildCreatAccount(),
                    Sized_Box(15),
                    Text_Field('E-mail', 'assets/images/icons/E-mail.png',
                        false, _emailvalidator),
                    Sized_Box(57),
                    TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          // print('user email is ' + _useremail);
                          print("ikhdim cham 2");
                          // print(_autoValidate);
                          return "enter ur cham 2";
                        } else {
                          //setState(() => _autoValidate = true);
                          // print("user email " + _useremail);
//_useremail = value;
                          return null;
                        }
                      }),
                      textAlign: TextAlign.left,
                    ),

                    /* Text_Field(
                      'Mot de passe',
                      'assets/images/icons/Password.png',
                      true,
                      _emailvalidator,
                    ),*/
                    Sized_Box(17.5),
                    Button_wide(goto, 'Se connecter'),
                    Sized_Box(28),
                    _buildForgetPassword(),
                  ],
                ),
              ),
            ),
            Cloud_bg(),
          ],
        ),
      ),
    );
  }
}
