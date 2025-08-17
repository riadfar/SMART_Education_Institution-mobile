import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/view/screens/description_scholarship_screen/build_bottom_sheet_register_scholarship.dart';

class DescriptionScholarshipScreen extends StatelessWidget {
  const DescriptionScholarshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultColor,
        titleSpacing: 0,
        toolbarHeight: 65,
        title: DefaultText(
          text: 'Description'.tr(context),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/1.jpg"),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: 'Therefore, it is important to dedicate ',
                      style:Theme.of(context).textTheme.displayLarge,
                    ),
                    DefaultText(
                      text:
                          'Therefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through nTherefore, it is important to dedicate time for reading in our daily lives, whether through n',
                      style:Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsetsGeometry.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).cardColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultListTile(
                      textTitle: 'Country',
                      textSubTitle: 'Sweden',
                      leading: Icon(Icons.public_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'University',
                      textSubTitle: 'Nordic Sustainability University',
                      leading: Icon(Icons.account_balance_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Specialization',
                      textSubTitle: 'Environmental Technology',
                      leading: Icon(Icons.work_outline),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Funding Agency',
                      textSubTitle: 'Green Future Foundation',
                      leading: Icon(Icons.business_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Type Of Financing',
                      textSubTitle: 'Tuition + Stipend',
                      leading: Icon(Icons.wallet_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Advantages',
                      textSubTitle: 'Industry connections + prototype funding',
                      leading: Icon(Icons.star_border_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Achieved Certificate',
                      textSubTitle: 'Environmental Science Certificate',
                      leading: Icon(Icons.emoji_events_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Required Documents',
                      textSubTitle: 'Project plan, Academic records',
                      leading: Icon(Icons.library_books_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Required Certificates',
                      textSubTitle: 'Relevant coursework/projects',
                      leading: Icon(Icons.school_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Submission Time',
                      textSubTitle: '2024-02-28',
                      leading: Icon(Icons.date_range_outlined),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              DefaultButton(
                background: defaultColor,
                text: 'Join Now',
                onPress: () {
                  showBottomSheetRegisterCourse(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
