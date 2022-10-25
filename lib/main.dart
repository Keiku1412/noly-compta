import 'dart:async';
import 'dart:math';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nolycompta/Screens/LogIn/LogIn.dart';
import 'package:nolycompta/l10n/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nolycompta/Screens/Home/Home.dart';

import 'api/login_api.dart';

bool? saved_user;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences? saved_data = await SharedPreferences.getInstance();
  saved_user = await login_verify_token(saved_data);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: L10n.all,
        localizationsDelegates: [
          T.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        theme: ThemeData(fontFamily: 'tt_commons'),
        home: (() {
          if (saved_user!) {
            return Home();
          } else {
            return Login();
          }
        }()));
  }
}
