import 'dart:math';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/buttons.dart';
import 'package:nolycompta/constant/cards.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';
import 'package:nolycompta/constant/progress_bar_ac.dart';

import '../../constant/nolylogo_bg.dart';
import '../../constant/snackbar.dart';
import '../../constant/textfield.dart';

class Create_Account1 extends StatefulWidget {
  const Create_Account1({Key? key}) : super(key: key);

  @override
  State<Create_Account1> createState() => _Create_Account1();
}

int step = 7;
List<bool> switchs = [false, false, false, false];
List<String> cards_images_2 = [
  'assets/images/logos/2_1.png',
  'assets/images/logos/2_2.png',
  'assets/images/logos/2_3.png',
  'assets/images/logos/2_4.png',
  'assets/images/logos/2_5.png',
];
bool value = false;
bool terms = false;
int check_pack = -1;
int index = 0;

// ignore: camel_case_types
class _Create_Account1 extends State<Create_Account1> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final useremail_controller = TextEditingController();
  final userpassword_controller = TextEditingController();
  final userpassword_controller2 = TextEditingController();

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

  _passwordvalidator(value) {
    //_userpassword = value;
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      print("Password is empty");
      return T.of(context)!.enter_password;
    } else if (!regex.hasMatch(value)) {
      return T.of(context)!.use_valid_password;
    } else {
      return null;
    }
  }

  _passwordvalidator2(value) {
    if (value.isEmpty) {
      print("Password is empty");
      return T.of(context)!.enter_password;
    } else if (value != userpassword_controller.text) {
      print("Password " + value + " is diffrent than ");
      print(userpassword_controller.text);
      return T.of(context)!.l_pv_same_password;
    } else {
      return null;
    }
  }

  void _next_card() {
    setState(() {
      final isValidForm = formKey.currentState?.validate();
      print("card clicked from set state");
      if (step > 56) {
        print('step 6');
        step = 60;
      } else if (step == 43 && check_pack == -1) {
        Custom_snackbar(
            context, 'Veuillez sélectionner le pack qui vous convient');
      } else if (step == 43 && terms == false) {
        Custom_snackbar(
            context, 'Vous devez d\'abord accepter les termes et conditions');
      } else if (step == 55 && isValidForm == false) {
        print(step);
        print(isValidForm);
      } else if (step == 55 && isValidForm == true) {
        print(step);

        print(isValidForm);

        if (isValidForm!) {
          // String? useremail = useremail_controller.text;
          // print("everythiing is okay ready to go ");
          //login_api(
          //   //    useremail_controller, userpassword_controller, userdata, context);
        }
        step += 5;
      } else {
        step += 12;
      }
    });
  }

  void _first_card(i) {
    setState(() {
      if (step == 19) {
        index = i;
        step += 12;
      }
    });
  }

  void Reset_Progress_Bar_AC() {
    setState(() {
      print("card clicked from set state");
      step = 7;
    });
  }

  void on_off_switcher(i, val) {
    setState(() {
      switchs[i] = val;
    });
  }

  void on_off_pack(i, val) {
    setState(() {
      if (val) {
        check_pack = i;
        print('selected pack $check_pack');
      } else {
        check_pack = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            noly_background,
            Cloud_bg(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Noly_logo(),
                  Sized_Box(17),
                  Headline(T.of(context)!.create_account),
                  Sized_Box(70),
                  //1 = 7; 2=19; 3=31; 4=43; 5=55;6= 60;+12s
                  InkWell(
                    onTap: () {
                      return Reset_Progress_Bar_AC();
                    },
                    child: Progress_Bar_AC(step),
                  ),
                  Sized_Box(50),
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 1000),
                      reverseDuration: const Duration(milliseconds: 0),
                      child: (() {
                        if (step == 7) {
                          return Column(
                            key: Key('1'),
                            children: [
                              Sized_Box(12),
                              Cards_AC(T.of(context)!.ca_card_1_1,
                                  'assets/images/logos/1_1.png', _next_card),
                              Sized_Box(95),
                              Cards_AC(T.of(context)!.ca_card_1_2,
                                  'assets/images/logos/1_2.png', _next_card),
                              Sized_Box(95),
                              Cards_AC(T.of(context)!.ca_card_1_3,
                                  'assets/images/logos/1_3.png', _next_card),
                            ],
                          );
                        } else if (step == 19) {
                          return Column(
                            key: Key('2'),
                            children: [
                              Cards_AC_2([
                                T.of(context)!.ca_card_2_1,
                                T.of(context)!.ca_card_2_2,
                                T.of(context)!.ca_card_2_3,
                                T.of(context)!.ca_card_2_4,
                                T.of(context)!.ca_card_2_5
                              ], cards_images_2, _first_card),
                              Sized_Box(15),
                            ],
                          );
                        } else if (step == 31) {
                          return Column(
                            key: Key('3'),
                            children: [
                              Cards_AC_3([
                                T.of(context)!.ca_card_3_1,
                                T.of(context)!.ca_card_3_2,
                                T.of(context)!.ca_card_3_3,
                                T.of(context)!.ca_card_3_4,
                              ], cards_images_2[index], switchs,
                                  on_off_switcher),
                              Sized_Box(95),
                              Button_short(_next_card, T.of(context)!.next)
                            ],
                          );
                        } else if (step == 43) {
                          return Column(
                            key: Key('4'),
                            children: [
                              Sized_Box(95),
                              Cards_AC_4(
                                  ["PACK BNC ASSO", "PACK BNC ASSO +"],
                                  ['34,90 € HT', '50,90 € HT'],
                                  ['discription 1', 'discreption 2'],
                                  on_off_pack,
                                  check_pack),
                              Center(
                                child: Container(
                                  width: 420,
                                  padding: EdgeInsets.only(left: 60, right: 60),
                                  child: Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            unselectedWidgetColor: greencol),
                                        child: Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: greencol,
                                          value: terms,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              terms = value!;
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        width: 240,
                                        child: Text(
                                          T.of(context)!.ca_card_4_terms,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Regular',
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Sized_Box(80),
                              Button_short(_next_card, T.of(context)!.next),
                              Sized_Box(30),
                            ],
                          );
                        } else if (step == 55) {
                          return Column(
                            key: Key('5'),
                            children: [
                              Form(
                                autovalidateMode: AutovalidateMode.disabled,
                                key: formKey,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 108,
                                      child: Text_Field(
                                          T.of(context)!.email,
                                          'assets/images/icons/E-mail.png',
                                          false,
                                          _emailvalidator,
                                          useremail_controller),
                                    ),
                                    Container(
                                      height: 108,
                                      child: Text_Field(
                                          T.of(context)!.password,
                                          'assets/images/icons/Password.png',
                                          true,
                                          _passwordvalidator,
                                          userpassword_controller),
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
                                    Sized_Box(57),
                                  ],
                                ),
                              ),
                              Button_short(_next_card, T.of(context)!.next),
                              // Button_short(test, "Suivant"),
                              Sized_Box(15),
                            ],
                          );
                        } else if (step == 60) {
                          return Column(
                            key: Key('6'),
                            children: [
                              Cards_AC('test 6', 'assets/images/logos/1_1.png',
                                  _next_card),
                              Sized_Box(95),
                            ],
                          );
                        }
                      }())),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
