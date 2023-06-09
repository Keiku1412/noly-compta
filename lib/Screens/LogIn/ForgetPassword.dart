import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/Screens/LogIn/CodeVerification.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../constant/buttons.dart';
import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';

class Forget_Paswword extends StatefulWidget {
  const Forget_Paswword({Key? key}) : super(key: key);

  @override
  State<Forget_Paswword> createState() => _Forget_PaswwordState();
}

// ignore: camel_case_types
class _Forget_PaswwordState extends State<Forget_Paswword> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final useremail_controller = TextEditingController();
  late String _useremail;

  void goto(context) {
    final isValidForm = formKey.currentState!.validate();
    print('test button pressed');
    if (isValidForm) {
      print("everythiing is okay ready to go ");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Code_Verification()),
      );
    }
  }

  _emailvalidator(value) {
    if (value!.isEmpty) {
      print("Email is empty");
      return T.of(context)!.enter_email;
    } else if (!EmailValidator.validate(value)) {
      return T.of(context)!.use_valid_email;
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
                    Sized_Box(19),
                    Headline(T.of(context)!.l_fp_headline),
                    Sized_Box(10),
                    Container(
                      height: 108,
                      child: Text_Field(
                          'E-mail',
                          'assets/images/icons/E-mail.png',
                          false,
                          _emailvalidator,
                          useremail_controller),
                    ),
                    Sized_Box(17),
                    Button_wide(goto, T.of(context)!.l_fp_sendverification),
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
