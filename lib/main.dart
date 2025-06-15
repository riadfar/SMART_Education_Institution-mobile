import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/forgot_password/enter_code_screen.dart';
import 'package:smart_education_institution_mobile/view/forgot_password/enter_email_screen.dart';
import 'package:smart_education_institution_mobile/view/forgot_password/enter_password_screen.dart';
import 'package:smart_education_institution_mobile/view/signin_screen.dart';
import 'package:smart_education_institution_mobile/view/signup_screen.dart';

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
      home: EnterEmailScreen(),
    );
  }
}
