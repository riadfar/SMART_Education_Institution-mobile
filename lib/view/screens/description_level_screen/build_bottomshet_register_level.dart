import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

var radiokeyAcademicStage = GlobalKey<FlutterRadioGroupState>();
var radiokeyLanguageLevel = GlobalKey<FlutterRadioGroupState>();
var radiokeySession = GlobalKey<FlutterRadioGroupState>();
var radiokeyTime = GlobalKey<FlutterRadioGroupState>();
var radiokeyDays = GlobalKey<FlutterRadioGroupState>();
final List<String> time = ['18:00', '15:00', '20:00'];
final List<String> days = ['Tue/Thu', 'Wed/Mon'];

void showBottomSheetRegisterCourse(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    useSafeArea: true,
    sheetAnimationStyle: AnimationStyle(
      duration: Duration(seconds: 2),
      curve: FlippedCurve(Curves.decelerate),
    ),
    showDragHandle: true,
    context: context,
    builder: (BuildContext context) => SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefContainer(
                child: DefFlutterRadioGroup(
                  radiokey: radiokeyAcademicStage,
                  titles: academicStage,
                  label: 'Academic stage',
                  titleStyle: Colors.black,
                  onChanged: (value) {
                    print(academicStage.elementAtOrNull(value!));
                  },
                  orientation: RGOrientation.VERTICAL,
                ),
              ),
              SizedBox(height: 15),
              DefContainer(
                child: DefFlutterRadioGroup(
                  radiokey: radiokeyLanguageLevel,
                  titles: level,
                  label: 'Language level',
                  titleStyle: Colors.black,
                  onChanged: (value) {
                    print(level.elementAtOrNull(value!));
                  },
                  orientation: RGOrientation.VERTICAL,
                ),
              ),
              SizedBox(height: 15),
              DefContainer(
                child: DefFlutterRadioGroup(
                  radiokey: radiokeyTime,
                  titles: time,
                  label: 'Time',
                  titleStyle: Colors.black,
                  onChanged: (value) {
                    print(time.elementAtOrNull(value!));
                  },
                  orientation: RGOrientation.HORIZONTAL,
                ),
              ),
              SizedBox(height: 15),
              DefContainer(
                child: DefFlutterRadioGroup(
                  radiokey: radiokeyDays,
                  titles: days,
                  label: 'Days',
                  titleStyle: Colors.black,
                  onChanged: (value) {
                    print(days.elementAtOrNull(value!));
                  },
                  orientation: RGOrientation.HORIZONTAL,
                ),
              ),
              SizedBox(height: 15),
              DefContainer(
                child: DefFlutterRadioGroup(
                  radiokey: radiokeySession,
                  titles: session,
                  label: 'Language level',
                  titleStyle: Colors.black,
                  onChanged: (value) {
                    print(session.elementAtOrNull(value!));
                  },
                  orientation: RGOrientation.VERTICAL,
                ),
              ),
              SizedBox(height: 15),
              DefaultButton(
                background: defaultColor,
                text: 'Register',
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
