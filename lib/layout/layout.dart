import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/view/screens/courses_screen/courses_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/home_screen/home_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/profile_screen/profile_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/scholarship_screen/scholarship_screen.dart';

List<Widget> _screens = [
  HomeScreen(),
  CoursesScreen(),
  ScholarshipScreen(),
  ProfileScreen(),
];
int currentIndex = 0;

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GNav(
            tabs: [
              GButton(icon: Icons.home_outlined),
              GButton(icon: Icons.apps_outlined),
              GButton(icon: Icons.school_outlined),
              GButton(icon: Icons.person_outline),
            ],
            selectedIndex: currentIndex,
            onTabChange: (i) {
              setState(() {
                currentIndex = i;
              });
            },
            backgroundColor: defaultColor,
            color: Colors.grey.shade300,
            activeColor: secondaryColor,
            iconSize: 30,
            rippleColor: secondaryColor.withValues(alpha: .2),
            hoverColor: secondaryColor.withValues(alpha: .2),
            padding: EdgeInsetsGeometry.only(
              bottom: 18,
              top: 18,
              right: 20,
              left: 20,
            ),
          ),
        ),
      ),
    );
  }
}
