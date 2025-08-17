import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/app_localization.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/view/screens/scholarship_screen/build_scholarship_items.dart';

class ScholarshipScreen extends StatelessWidget {
  const ScholarshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title: DefaultText(text: 'Scholarship'.tr(context), color: Colors.white, size: 25),
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
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildScholarshipItems(context),
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
