import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:nolycompta/Screens/LogIn/LogIn.dart';

import 'package:nolycompta/constant/const.dart';
import 'package:nolycompta/constant/headline.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api_class/user.dart';
import '../../constant/buttons.dart';
import '../../constant/nolylogo_bg.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
}

// ignore: camel_case_types
class _Home extends State<Home> {
  late SharedPreferences userdata;
  String? useremail;
  late Future<User> futureUser;
  @override
  void initState() {
    super.initState();
    initial();
    // futureUser = fetchUser();
  }

  void initial() async {
    userdata = await SharedPreferences.getInstance();
    setState(() {
      useremail = userdata.getString('useremail')!;
    });
  }

  void goto(context) async {
    print('test button pressed');
    userdata = await SharedPreferences.getInstance();
    //if user get logged in (TODO)
    await userdata.remove('token');
    //final bool? shared_rememberme = prefs.getBool('shared_rememberme');
    print("everythiing is okay ready to go ");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
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
              child: Column(
                children: [
                  Noly_logo(),
                  Sized_Box(19),
                  Headline('Welcome '),
                  Headline(useremail ?? ''),
                  Sized_Box(4),
                  Button_wide(goto, 'Log out'),
                  Sized_Box(17),
                  Sized_Box(50),
                ],
              ),
            ),
            Cloud_bg(),
          ],
        ),
      ),
    );
  }
}
