import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/fill_student_data_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/register_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/profile_screen/edit_profile_screen.dart';



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
      home: EditProfileScreen(),
    );
  }
}
