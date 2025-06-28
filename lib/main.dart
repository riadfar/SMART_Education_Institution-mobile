import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/auth_screens/screens/fill_student_data_screen.dart';
import 'package:smart_education_institution_mobile/view/auth_screens/screens/forgotten_password_screen.dart';
import 'package:smart_education_institution_mobile/view/auth_screens/screens/verification.dart';
import 'package:smart_education_institution_mobile/view/auth_screens/screens/login_screen.dart';
import 'package:smart_education_institution_mobile/view/auth_screens/screens/register_screen.dart';

import 'view/auth_screens/screens/request_code_screen.dart';

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
      home: FillStudentDataScreen(),
    );
  }
}
