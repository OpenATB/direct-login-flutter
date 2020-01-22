import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
// TODO: Fill out these fields
  static const String appName = "";

  // leapos api endpoint
  static const String API_HOST = "";

  // leap.consumer_key
  static const String CONSUMER_KEY = "";

  //leap.bank_id
  static const String BANK_ID = "";

  static const String enter_valid_username_password = "Enter valid username and password";

  //assets path
  static const String imageDir = "assets/images";
  static const String strings_logo_path = "$imageDir/logo.png";
  static const String avatar_path = "$imageDir/avatar.png";
  static const String map_path = "$imageDir/map.png";

  //login
  static const String enter_username_hint = "Enter username";
  static const String enter_username_label = "Username";
  static const String enter_pass_hint = "Enter password";
  static const String enter_pass_label = "Password";
  static const String next = "Next";
  static const String login = "login";

  //accounts
  static const String no_account = "You dont have any bank account. Please create one..";

  //main
  static const String home = "Home";
  static const String analytic = "Analytic";

  //gneric
  static const String error = "Error";
  static const String success = "Success";
  static const String ok = "OK";
  static const String balance = "Total Balance";

  //colors
  static List<Color> kitGradients = [appColor, Colors.red.shade800];
  static List<Color> bgGradients = [Colors.red.shade900, Colors.red.shade100];
  static const Color appColor = Color(0xFFe35c55);

}
