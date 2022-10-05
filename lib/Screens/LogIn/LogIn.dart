import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/Screens/Create_Account/CreateAcount.dart';
import 'package:nolycompta/Screens/LogIn/test_page.dart';

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
  bool rememberMe = false;
  late String _useremail;
  late String _userpassword;

  void goto(context) {
    final isValidForm = formKey.currentState!.validate();
    print('test button pressed');

    if (isValidForm) {
      print("everythiing is okay ready to go ");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Test_page()),
      );
    }
  }

  _emailvalidator(value) {
    if (value!.isEmpty) {
      print("Email is empty");

      return "Veuillez entrer votre adresse e-mail";
    } else if (!EmailValidator.validate(value)) {
      return "Veuillez utiliser un Email valide";
    } else {
      _useremail = value;
      print("Email is " + _useremail);
      return null;
    }
  }

  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  _passwordvalidator(value) {
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

  Widget _buildCheckBox() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text("Gardez-moi connecté ",
              style: TextStyle(
                  fontSize: 18, fontFamily: 'Medium', color: greencol)),
          SizedBox(width: 10.0),
          SizedBox(
            height: 24.0,
            width: 24.0,
            child: Theme(
              data: ThemeData(unselectedWidgetColor: greencol // Your color
                  ),
              child: Checkbox(
                activeColor: greencol,
                value: rememberMe,
                onChanged: (bool? value) {
                  setState(() {
                    rememberMe = value!;
                  });
                },
              ),
            ),
          ),
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
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 30),
              reverse: true,
              child: Form(
                autovalidateMode: AutovalidateMode.disabled,
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
                    Container(
                      height: 108,
                      child: Text_Field(
                          'E-mail',
                          'assets/images/icons/E-mail.png',
                          false,
                          _emailvalidator),
                    ),
                    Container(
                      height: 108,
                      child: Text_Field(
                          'Mot de passe',
                          'assets/images/icons/Password.png',
                          true,
                          _passwordvalidator),
                    ),
                    _buildCheckBox(),
                    Sized_Box(57),
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
