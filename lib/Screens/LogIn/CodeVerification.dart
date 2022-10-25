import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constant/buttons.dart';
import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';
import 'PasswordVerification.dart';

class Code_Verification extends StatefulWidget {
  const Code_Verification({Key? key}) : super(key: key);

  @override
  State<Code_Verification> createState() => _Code_Verification();
}

// ignore: camel_case_types
class _Code_Verification extends State<Code_Verification> {
  bool _onEditing = true;
  String? _code;

  void goto(context) {
    print('test button pressed');
    print(_code);
    if (_code == '1412') {
      print("everythiing is okay ready to go ");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Password_Verification()),
      );
    }
  }

  Widget Verification_field() {
    return VerificationCode(
      digitsOnly: true,
      underlineUnfocusedColor: greencol,
      underlineWidth: 2,
      fillColor: Color.fromARGB(41, 200, 189, 189),
      fullBorder: true,
      textStyle: Theme.of(context)
          .textTheme
          .bodyText2!
          .copyWith(color: Theme.of(context).primaryColor),
      keyboardType: TextInputType.number,
      underlineColor: fadebluecol,
      length: 4,
      cursorColor: greencol,
      clearAll: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          T.of(context)!.l_cv_delete_all,
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Medium',
              decorationColor: Colors.red,
              decorationThickness: 1.5,
              decoration: TextDecoration.underline,
              color: Colors.red),
        ),
      ),
      margin: const EdgeInsets.all(12),
      onCompleted: (String value) {
        setState(() {
          _code = value;
        });
      },
      onEditing: (bool value) {
        setState(() {
          _onEditing = value;
        });
        if (!_onEditing) FocusScope.of(context).unfocus();
      },
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
                  Headline(T.of(context)!.l_cv_headline),
                  Sized_Box(10),
                  Verification_field(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: _onEditing
                            ? Text_Regular(T.of(context)!.l_cv_enter_full_code,
                                Colors.black)
                            : Text_Regular(
                                T.of(context)!.l_cv_your_code + ' $_code',
                                Colors.black)),
                  ),
                  Sized_Box(17),
                  Button_wide(goto, T.of(context)!.l_cv_confirm),
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
