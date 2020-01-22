import 'dart:ui';

import 'package:flutter/material.dart';

class UIData {
  static const String appName = "Hackathon Bank";

  static const String enter_valid_username = "Enter valid username";
  static const String enter_valid_password = "Enter valid password";

  //assets path
  static const String imageDir = "assets/images";
  static const String strings_logo_path = "$imageDir/logo.png";

  // Source: https://www.flaticon.com/free-icon/user_1077063?term=profile
  static const String avatar_path = "$imageDir/profile_pic.png";
  static const String map_path = "$imageDir/map.png";

  //login
  static const String enter_username_hint = "Enter username";
  static const String enter_username_label = "Username";
  static const String enter_pass_hint = "Enter password";
  static const String enter_pass_label = "Password";
  static const String next = "Next";
  static const String login = "login";

  //gneric
  static const String error = "Error";
  static const String success = "Success";
  static const String ok = "OK";

  //colors
  static List<Color> kitGradients = [appColor, Colors.red.shade800];
  static List<Color> bgGradients = [Colors.red.shade900, Colors.red.shade100];
  static const Color appColor = Color(0xFFe35c55);
}
