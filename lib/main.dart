import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/login_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/courses_screen/courses_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/description_level_screen/description_level_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/levels_screen/view_levels_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/description_scholarship_screen/description_scholarship_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/scholarship_screen/scholarship_screen.dart';

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
      home: LoginScreen(),
    );
  }
}
