import 'package:nolycompta/constant/const.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/Screens/Home/Home.dart';
import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';

import '../constant/snackbar.dart';

Future login_api(user, pass, saved_data, context) async {
  saved_data = await SharedPreferences.getInstance();
  var url = Uri.parse("http://10.0.2.2:3500/api/auth/login");
  var response = await http.post(url, body: {
    "email": user.text,
    "password": pass.text,
  });

  var data = json.decode(response.body);
  print('this is data ');
  print(data);

  await saved_data?.setString('token', data['token'] ?? '');
  String token = saved_data?.getString("token") ?? '';

  if (token != "") {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  } else if (data['message'] == 'No User found') {
    Custom_snackbar(context, 'Aucun utilisateur trouvé');
  } else if (data['message'] == 'password unvalid') {
    Custom_snackbar(context, 'Mot de passe non valide');
  }
}

Future<bool> login_verify_token(saved_data) async {
  saved_data = await SharedPreferences.getInstance();
  String token = saved_data?.getString("token") ?? '';

  print(token);
  if (token != "") {
    return true;
  } else {
    return false;
  }
}
