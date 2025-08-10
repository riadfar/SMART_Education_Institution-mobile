import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/utils/controller.dart';

var radiokeyAcademicStage = GlobalKey<FlutterRadioGroupState>();
var radiokeyTest = GlobalKey<FlutterRadioGroupState>();
var radiokeyLanguageLevel = GlobalKey<FlutterRadioGroupState>();

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
              DefaultText(
                text: 'Consultation Session Request From(Free).',
                color: defaultColor,
                fontWeight: FontWeight.bold,
                size: 16,
              ),
              SizedBox(height: 15,),
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                child: DefaultText(
                  text: 'Name of school/institute/university',
                  color: defaultColor,
                  size: 16,
                ),
              ),
              CustomTextFormFiled(
                controller: controllerName,
                type: TextInputType.name,
                prefix: Icons.account_balance_outlined,
                borderColor: defaultColor,
                iconColor: secondaryColor,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return "This question is required";
                  } else {}
                },
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                child: DefaultText(
                  text: 'Field and specialization of study',
                  color: defaultColor,
                  size: 16,
                ),
              ),
              CustomTextFormFiled(
                controller: controllerSpecialization,
                type: TextInputType.name,
                prefix: Icons.work_outline,
                borderColor: defaultColor,
                iconColor: secondaryColor,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return "This question is required ";
                  } else {}
                },
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                child: DefaultText(
                  text: 'Academic year',
                  color: defaultColor,
                  size: 16,
                ),
              ),
              CustomTextFormFiled(
                controller: controllerAcademicYear,
                type: TextInputType.name,
                prefix: Icons.info_outline,
                borderColor: defaultColor,
                iconColor: secondaryColor,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return "This question is required";
                  } else {}
                },
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                child: DefaultText(
                  text: 'Average if the certificate is obtained',
                  color: defaultColor,
                  size: 16,
                ),
              ),
              CustomTextFormFiled(
                controller: controllerAverage,
                type: TextInputType.name,
                prefix: Icons.rate_review_outlined,
                borderColor: defaultColor,
                iconColor: secondaryColor,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return "This question is required";
                  } else {}
                },
              ),
              SizedBox(height: 15),
              DefContainer(
                child: DefFlutterRadioGroup(
                  radiokey: radiokeyTest,
                  titles: test,
                  label:
                      'Have you taken a placement test or english language courses within last three month ?',
                  titleStyle: Colors.black,
                  onChanged: (value) {
                    print(test.elementAtOrNull(value!));
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