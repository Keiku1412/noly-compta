import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:nolycompta/constant/const.dart';

import 'PasswordVerification.dart';

class Forget_Paswword extends StatefulWidget {
  const Forget_Paswword({Key? key}) : super(key: key);

  @override
  State<Forget_Paswword> createState() => _Forget_PaswwordState();
}

// ignore: camel_case_types
class _Forget_PaswwordState extends State<Forget_Paswword> {
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

  Widget _buildEmailTF() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(41, 0, 41, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Entrez votre E-mail',
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
                    'assets/images/E-mail.png',
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Password_Verification()),
            );
          },
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
                    height: (MediaQuery.of(context).size.height / 19),
                    width: 26,
                  ),
                  _buildHeadline(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 10),
                    width: 22,
                  ),
                  _buildEmailTF(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 17),
                    width: 22,
                  ),
                  _buildButton(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 6),
                    width: 22,
                  ),
                  _buildBackgroundImage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
