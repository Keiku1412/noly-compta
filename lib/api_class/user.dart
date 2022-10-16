import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

class User {
  final String id;
  final bool activated;
  final String username;
  final String profilePhoto;
  final String adress;

  const User({
    required this.id,
    required this.activated,
    required this.username,
    required this.profilePhoto,
    required this.adress,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      //  userId: json['userId'],
      id: json['id'],
      activated: json['adress'],
      username: json['username'],
      profilePhoto: json['profilePhoto'],
      adress: json['adress'],
    );
  }
}

/*Future<User> fetchUser() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2:3500/api/auth/login'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(jsonDecode(response.body));
    return User.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load User');
  }
}*/
