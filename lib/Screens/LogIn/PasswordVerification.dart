import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/buttons.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';

import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';

class Password_Verification extends StatefulWidget {
  const Password_Verification({Key? key}) : super(key: key);

  @override
  State<Password_Verification> createState() => _Password_Verification();
}

// ignore: camel_case_types
class _Password_Verification extends State<Password_Verification> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final userpassword_controller1 = TextEditingController();
  final userpassword_controller2 = TextEditingController();
  late String _useremail;
  late String _userpassword = '';
  late String _userpassword2 = '';

  void goto(context) {
    final isValidForm = formKey.currentState!.validate();

    print('test button pressed');

    if (isValidForm) {
      /*   Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Forget_Paswword()),
                    );*/
      print("everythiing is okay ready to go ");
    }
  }

  _passwordvalidator(value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      print("Password is empty");
      return "Veuillez entrer votre mot de passe";
    } else if (!regex.hasMatch(value)) {
      return "Mot de passe doit contenir 1 caractère: spécial, majuscule, chiffre";
    } else {
      _userpassword = value;
      print("Password is " + _userpassword);
      return null;
    }
  }

  _passwordvalidator2(value) {
    if (value.isEmpty) {
      print("Password is empty");
      return "Veuillez entrer votre mot de passe";
    } else if (value != _userpassword) {
      print("Password " + value + "is diffrent than " + _userpassword);
      return "veuillez entrer le même mot de passe";
    } else {
      return null;
    }
  }

  Widget _buildsubline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
        child: const Text(
          "Veuillez configurer votre nouveau mot de passe.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff55BBA8),
            fontSize: 14,
            fontFamily: 'Regular',
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
              reverse: true,
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Noly_logo(),
                    Sized_Box(28),
                    Headline('Récupérer mon mot de passe'),
                    Sized_Box(100),
                    _buildsubline(),
                    Sized_Box(13),
                    Sized_Box(57),
                    Container(
                      height: 108,
                      child: Text_Field(
                          'Nouveau mot de passe',
                          'assets/images/icons/Password.png',
                          true,
                          _passwordvalidator,
                          userpassword_controller1),
                    ),
                    Container(
                      height: 108,
                      child: Text_Field(
                          'Confirmez votre mot de pass',
                          'assets/images/icons/Password.png',
                          true,
                          _passwordvalidator2,
                          userpassword_controller2),
                    ),
                    Button_wide(goto, 'Changer le mot de passe'),
                    Sized_Box(50),
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
