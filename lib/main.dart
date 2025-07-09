import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/screens/courses_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/login_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/profile_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/register_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/view_course_description_screen.dart';


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
      home: ProfileScreen(),
    );
  }
}
