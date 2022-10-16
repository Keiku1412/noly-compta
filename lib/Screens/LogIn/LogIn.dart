import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/Screens/Create_Account/CreateAcount.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../api/login_api.dart';
import '../../constant/buttons.dart';
import '../../constant/headline.dart';
import '../../constant/nolylogo_bg.dart';
import '../../constant/textfield.dart';
import 'ForgetPassword.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final useremail_controller = TextEditingController();
  final userpassword_controller = TextEditingController();
  SharedPreferences? userdata;
  // late FToast fToast;
  // late String token;

  @override
  void initState() {
    super.initState();
    // fToast = FToast();
    // fToast.init(context);
  }

  @override
  void dispose() {
    useremail_controller.dispose();
    userpassword_controller.dispose();
    super.dispose();
  }

  void goto(context) async {
    final isValidForm = formKey.currentState!.validate();
    if (isValidForm) {
      String? useremail = useremail_controller.text;
      print("everythiing is okay ready to go ");
      login_api(
          useremail_controller, userpassword_controller, userdata, context);
    }
  }

  _emailvalidator(value) {
    if (value!.isEmpty) {
      print("Email is empty");
      return "Veuillez entrer votre adresse e-mail";
    } else if (!EmailValidator.validate(value)) {
      return "Veuillez utiliser un Email valide";
    } else {
      return null;
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
      return null;
    }
  }

  Widget _buildsubline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Container(
        child: Text(
          AppLocalizations.of(context)!.sub_title_login,
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
                text: AppLocalizations.of(context)!.create_account,
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
                text: AppLocalizations.of(context)!.forgetpassword,
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
                autovalidateMode: AutovalidateMode.disabled,
                key: formKey,
                child: Column(
                  children: [
                    Noly_logo(),
                    Sized_Box(27),
                    Headline(AppLocalizations.of(context)!.conexion),
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
                          _emailvalidator,
                          useremail_controller),
                    ),
                    Container(
                      height: 108,
                      child: Text_Field(
                          'Mot de passe',
                          'assets/images/icons/Password.png',
                          true,
                          _passwordvalidator,
                          userpassword_controller),
                    ),
                    Sized_Box(57),
                    Button_wide(goto, AppLocalizations.of(context)!.log_in),
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
