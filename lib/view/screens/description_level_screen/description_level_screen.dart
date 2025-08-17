import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/app_localization.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

import 'build_bottomshet_register_level.dart';

class DescriptionLevelScreen extends StatelessWidget {
  const DescriptionLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title: DefaultText(text: 'Description'.tr(context), color: Colors.white, size: 25),
        iconTheme: IconThemeData(color: Colors.white,size: 30),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(
                text: 'Flutter Fundamentals',
                color: Colors.black,
                size: 24,
                fontWeight: FontWeight.bold,
              ),
              DefaultText(
                text: 'Dart syntax, widget tree basics, and simple UI creation',
                color: Colors.grey.shade500,
                size: 16,
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsetsGeometry.all( 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black54.withValues(alpha: .04),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultListTile(
                      textTitle: 'Start_Date'.tr(context),
                      textSubTitle: '2023-09-10',
                      leading: Icon(Icons.date_range_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Time'.tr(context),
                      textSubTitle: '18:00-20:00',
                      leading: Icon(Icons.access_time_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Days'.tr(context),
                      textSubTitle: 'Mon/Wed',
                      leading: Icon(Icons.next_week_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Seats_Number'.tr(context),
                      textSubTitle: '30',
                      leading: Icon(Icons.event_seat_outlined),
                    ),
                    SizedBox(height: 15),
                    DefaultListTile(
                      textTitle: 'Status'.tr(context),
                      textSubTitle: 'Enrolling',
                      leading: Icon(
                        Icons.cancel_outlined,
                        size: 20,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              DefaultButton(
                background: defaultColor,
                text: 'Join_Now'.tr(context),
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