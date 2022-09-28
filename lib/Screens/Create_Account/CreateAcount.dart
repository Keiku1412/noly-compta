import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:nolycompta/constant/const.dart';

class Create_Account1 extends StatefulWidget {
  const Create_Account1({Key? key}) : super(key: key);

  @override
  State<Create_Account1> createState() => _Create_Account1();
}

// ignore: camel_case_types
class _Create_Account1 extends State<Create_Account1> {
  //noly upper logo
  Widget _buildnolylogo(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 6),
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
              "Créez un compte",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 39,
                fontFamily: 'DemiBold',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 33),
            height: (MediaQuery.of(context).size.height / 15),
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(
                  'assets/images/CA1_6.png',
                ),
                fit: BoxFit.none,
                scale: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard1() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        boxShadow: [
          BoxShadow(
              color: Color(0xff57B2D8),
              blurRadius: 60.0,
              spreadRadius: -40,
              offset: Offset(-6, 0))
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 109,
      width: 390,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/AcountCreation/1_1.png',
              width: (MediaQuery.of(context).size.width / 4),
              height: 70,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Ma structure existe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'DemiBold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard2() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        boxShadow: [
          BoxShadow(
              color: Color(0xff57B2D8),
              blurRadius: 60.0,
              spreadRadius: -40,
              offset: Offset(-6, 0))
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 109,
      width: 390,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/AcountCreation/1_2.png',
              width: (MediaQuery.of(context).size.width / 4),
              height: 70,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Ma structure existe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'DemiBold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard3() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        boxShadow: [
          BoxShadow(
              color: Color(0xff57B2D8),
              blurRadius: 60.0,
              spreadRadius: -40,
              offset: Offset(-6, 0))
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 109,
      width: 390,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/AcountCreation/1_3.png',
              width: (MediaQuery.of(context).size.width / 4),
              height: 70,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Ma structure existe",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'DemiBold',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      height: (MediaQuery.of(context).size.height / 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.none,
          alignment: FractionalOffset(
            -0.55,
            -0.2,
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
                    height: (MediaQuery.of(context).size.height / 10.5),
                    width: 26,
                  ),
                  _buildHeadline(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 8.7),
                    width: 22,
                  ),
                  _buildCard1(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 95),
                    width: 22,
                  ),
                  _buildCard2(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 95),
                    width: 22,
                  ),
                  _buildCard3(),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height / 3000),
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
