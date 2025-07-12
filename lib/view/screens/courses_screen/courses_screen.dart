import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

import 'build_items.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title:DefaultText(text: 'Courses', color:Colors.white, size:25),
        actions: [
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.white,
          ),
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              text: 'My Courses',
              color: defaultColor,
              size: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 125,
              child: ListView.separated(
                padding: EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildMyCourseItems(),
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 10),
              ),
            ),
            DefaultText(
              text: 'Courses',
              color: defaultColor,
              size: 25,
              fontWeight: FontWeight.bold,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildCourseItems(),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 5, width: double.infinity),
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}


