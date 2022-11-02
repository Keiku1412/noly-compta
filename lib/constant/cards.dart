import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Cards_AC extends StatelessWidget {
  final String title;
  final String image;
  Function x;

  Cards_AC(this.title, this.image, this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cards_decoration,
      // padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 104,
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width / 8,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          onTap: () {
            return x();
          },
          child: Row(
            children: [
              Image.asset(
                image,
                width: 100,
                height: 70,
                alignment: Alignment.center,
              ),
              Container(
                width: 210,
                child: Text(
                  title,
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'DemiBold',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cards_AC_2 extends StatelessWidget {
  final List<String> title;
  final List<String> image;
  final function;

  Cards_AC_2(
    this.title,
    this.image,
    this.function,
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < title.length; i++) {
      children.add(
        Container(
          decoration: cards_decoration,
          // padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          height: 104,
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width / 8,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: InkWell(
              onTap: () {
                return function(i);
              },
              child: Row(
                children: [
                  Image.asset(
                    image[i],
                    width: 100,
                    height: 70,
                    alignment: Alignment.center,
                  ),
                  Container(
                    width: 210,
                    child: Text(
                      title[i],
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'DemiBold',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Column(children: children);
  }
}

class Cards_AC_3 extends StatelessWidget {
  final List<String> titles;
  final String image;
  final List<bool> values;
  final function;
  //late final bool status;

  Cards_AC_3(
    this.titles,
    this.image,
    this.values,
    this.function,
  );
  //"L'association est-elle reconnue d'utilité publique?"
  bool status = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < titles.length; i++) {
      children.add(
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 16),
              width: MediaQuery.of(context).size.width / 1.85,
              child: Text(
                titles[i],
                maxLines: 3,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Medium',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 16),
              child: FlutterSwitch(
                inactiveColor: Colors.white,
                activeToggleColor: Colors.white,
                activeColor: greencol,
                toggleColor: greencol,
                switchBorder: Border.all(
                  color: greencol,
                  width: 1.5,
                ),
                width: 44,
                height: 23,
                valueFontSize: 10,
                toggleSize: 20,
                value: values[i],
                borderRadius: 20,
                padding: 0.5,
                showOnOff: false,
                onToggle: (val) {
                  this.function(i, val);
                },
              ),
            ),
          ],
        ),
      );
    }

    return Stack(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(
              top: 25,
            ),
            decoration: cards_decoration_3,
            height: 400,
            width: MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width / 8,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Sized_Box(25),
                  Container(
                    padding: EdgeInsets.fromLTRB(22, 45, 22, 20),
                    child: Column(
                      children: children,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            image,
            width: 100,
            height: 70,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}

class Cards_AC_4 extends StatelessWidget {
  final List<String> pack;
  final List<String> price;
  final List<String> discription;
  //final List<bool> values;
  final function;
  final int isChecked;

  Cards_AC_4(
    this.pack,
    this.price,
    this.discription,
    this.function,
    this.isChecked,
  );

  bool status = false;
  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var i = 0; i < pack.length; i++) {
      children.add(
        Container(
          height: 350,
          width: 280,
          margin: EdgeInsets.only(bottom: 30),
          padding: EdgeInsets.only(left: 15, right: 15, top: 8),
          decoration: BoxDecoration(
            border: Border.all(
              color: greencol,
              width: 1,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.normal,
                  color: fadebluecol,
                  spreadRadius: -8.2,
                  blurRadius: 30,
                  offset: Offset(-10, 10)),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 32,
                child: Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.transparent),
                  child: Checkbox(
                    splashRadius: 200,
                    checkColor: Colors.white,
                    activeColor: greencol,
                    value: i == isChecked,
                    shape: CircleBorder(side: BorderSide.none),
                    onChanged: (bool? value) {
                      this.function(i, value);
                    },
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    width: 1.7,
                    color: greencol,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.85,
                child: Text(
                  //  "PACK BNC ASSO",
                  pack[i],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: greencol,
                    fontSize: 21,
                    fontFamily: 'Medium',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.85,
                child: Text(
                  //  titles[i], price"34.90 € HT"
                  price[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'DemiBold',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.85,
                child: Text(
                  T.of(context)!.ca_card_4_parmois,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: greencol,
                    fontSize: 21,
                    fontFamily: 'Medium',
                  ),
                ),
              ),
              Sized_Box(120),
              Container(
                padding: EdgeInsets.all(10),
                height: 195,
                width: 270,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.4, 0.99],
                    colors: [
                      greencol,
                      Color.fromARGB(255, 57, 129, 118),
                    ],
                  ),
                  border: Border.all(
                    color: greencol,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.normal,
                        color: fadebluecol,
                        spreadRadius: -8.2,
                        blurRadius: 30,
                        offset: Offset(-10, 10)),
                  ],
                  color: greencol,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  //'Accès application Récupération des données bancaires Catégorisation des dépenses automatiques Accès page "tableau de bord" Note de frais / encaissement espèce',
                  discription[i],
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(children: children);
  }
}
