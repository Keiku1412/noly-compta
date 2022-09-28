import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/constant/const.dart';

class Password_Verification extends StatefulWidget {
  const Password_Verification({Key? key}) : super(key: key);

  @override
  State<Password_Verification> createState() => _Password_Verification();
}

// ignore: camel_case_types
class _Password_Verification extends State<Password_Verification> {
  //noly upper logo
  Widget _buildnolylogo(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 4.7),
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

  Widget _buildHeadline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        children: [
          Container(
            child: const Text(
              "Récupérer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 39,
                fontFamily: 'DemiBold',
              ),
            ),
          ),
          Container(
            child: Text(
              "mon mot de passe",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 39,
                fontFamily: 'DemiBold',
              ),
            ),
          ),
        ],
      ),
    );
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

  Widget _buildVerificationCodeTF() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Code de vérification',
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
                    'assets/images/VCode.png',
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
            'Nouveau mot de passe',
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

  Widget _buildPasswordlVerificationTF() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Confirmez votre mot de passe',
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
            'Envoyer une confirmation',
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
                    height: (MediaQuery.of(context).size.height / 28),
                    width: 26,
                  ),
                  _buildHeadline(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 100),
                    width: 22,
                  ),
                  _buildsubline(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 13),
                    width: 22,
                  ),
                  _buildVerificationCodeTF(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 57),
                    width: 22,
                  ),
                  _buildPasswordlTF(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 57),
                    width: 22,
                  ),
                  _buildPasswordlVerificationTF(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 17),
                    width: 22,
                  ),
                  _buildButton(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 90),
                    width: 22,
                  ),
                  _buildBackgroundImage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
