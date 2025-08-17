import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
import 'package:smart_education_institution_mobile/app_localization.dart';

import '../../../../components/components.dart';
import '../../../../utils/constants.dart';
import '../../../utils/controller.dart';

var formKey = GlobalKey<FormState>();
var radiokey = GlobalKey<FlutterRadioGroupState>();

class FillStudentDataScreen extends StatelessWidget {
  const FillStudentDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoComponent(),
                Center(
                  child: DefaultText(
                    text: 'student_information'.tr(context),
                    color: defaultColor,
                    size: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DefaultText(
                    text: 'first_name'.tr(context),
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: firstNameController,
                  type: TextInputType.name,
                  prefix: Icons.person_2_outlined,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "error_first_name ".tr(context);
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all( 8.0),
                  child: DefaultText(
                    text: 'last_name'.tr(context),
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: lastNameController,
                  type: TextInputType.name,
                  prefix: Icons.person_2_outlined,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "error_last_name".tr(context);
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all( 8.0),
                  child: DefaultText(
                    text: 'phone'.tr(context),
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: phoneController,
                  type: TextInputType.number,
                  prefix: Icons.phone_outlined,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "error_phone".tr(context);
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                DefFlutterRadioGroup(
                  radiokey: radiokey,
                  titles: genders(context),
                  label: 'gender'.tr(context),
                  titleStyle: defaultColor,
                  onChanged: (value){
                    print(genders(context).elementAtOrNull(value!));
                  },
                  orientation: RGOrientation.HORIZONTAL,
                  fontWeight: FontWeight.normal,
                ),
                DatePicked(),
                SizedBox(height: 40),
                DefaultButton(
                  text: 'done'.tr(context),
                  onPress: () {},
                  width: double.infinity,
                  background: defaultColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
