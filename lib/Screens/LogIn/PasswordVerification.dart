import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/buttons.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      print("everythiing is okay ready to go ");
    }
  }

  _passwordvalidator(value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      print("Password is empty");
      return T.of(context)!.enter_password;
    } else if (!regex.hasMatch(value)) {
      return T.of(context)!.use_valid_password;
    } else {
      _userpassword = value;
      print("Password is " + _userpassword);
      return null;
    }
  }

  _passwordvalidator2(value) {
    if (value.isEmpty) {
      print("Password is empty");
      return T.of(context)!.enter_password;
    } else if (value != _userpassword) {
      print("Password " + value + "is diffrent than " + _userpassword);
      return T.of(context)!.l_pv_same_password;
    } else {
      return null;
    }
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
                    Headline(T.of(context)!.l_pv_recover_password),
                    Sized_Box(100),
                    Text_Regular(T.of(context)!.l_pv_subtitle, greencol),
                    Sized_Box(13),
                    Sized_Box(57),
                    Container(
                      height: 108,
                      child: Text_Field(
                          T.of(context)!.l_pv_new_password,
                          'assets/images/icons/Password.png',
                          true,
                          _passwordvalidator,
                          userpassword_controller1),
                    ),
                    Container(
                      height: 108,
                      child: Text_Field(
                          T.of(context)!.l_pv_confirm_password,
                          'assets/images/icons/Password.png',
                          true,
                          _passwordvalidator2,
                          userpassword_controller2),
                    ),
                    Button_wide(goto, T.of(context)!.l_pv_change_password),
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
