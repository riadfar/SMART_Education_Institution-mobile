import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/fill_student_data_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/forgotten_password_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/login_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/register_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/request_code_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/verification.dart';
import 'package:smart_education_institution_mobile/view/screens/courses_screen/courses_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/home_screen/home_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/profile_screen/edit_profile_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/profile_screen/profile_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/view_description_screen.dart';

import 'layout/layout.dart';



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
      home: Layout(),
    );
  }
}
