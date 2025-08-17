import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/view/screens/courses_screen/build_courses_items.dart';


class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title: DefaultText(
          text: 'Courses'.tr(context),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: DefaultText(
                text: 'my_courses'.tr(context),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: SizedBox(
                  height: 125,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        buildMyCourseItems(context),
                    itemCount: 5,
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(width: 10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: DefaultText(
                text: 'Courses'.tr(context),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(right: 12, left: 12, bottom: 80),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildCourseItems(context),
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
