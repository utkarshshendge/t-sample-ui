import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/app_theme.dart';
import 'package:talawa_sample_ui/views/pages/login_signup/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TalawaTheme.buildLightTheme(),
      home: SignUpPage(),
    );
  }
}
