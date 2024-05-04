import 'package:flutter/material.dart';
import 'package:login_design_sec3/modules/login/login_design.dart';
import 'package:login_design_sec3/modules/messanger/messenger_design.dart';
import 'package:login_design_sec3/modules/user/user_screen.dart';

import 'modules/bmi/bmi_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDesign(),
    );
  }
}

