import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/utils/controller.dart';

var formKey = GlobalKey<FormState>();
var radiokey = GlobalKey<FlutterRadioGroupState>();

class FillStudentDataScreen extends StatelessWidget {
  const FillStudentDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor:  Theme.of(context).appBarTheme.backgroundColor,
        surfaceTintColor:  Theme.of(context).appBarTheme.surfaceTintColor,
      ),
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
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DefaultText(
                    text: 'first_name'.tr(context),
                    style: Theme.of(context).textTheme.bodyLarge,
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
                  padding: const EdgeInsets.all(8.0),
                  child: DefaultText(
                    text: 'last_name'.tr(context),
                    style: Theme.of(context).textTheme.bodyLarge,
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
                  padding: const EdgeInsets.all(8.0),
                  child: DefaultText(
                    text: 'phone'.tr(context),
                    style: Theme.of(context).textTheme.bodyLarge,
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
                  titleStyle: Theme.of(context).textTheme.bodyLarge,
                  labelStyle: Theme.of(context).textTheme.bodyLarge,
                  onChanged: (value) {
                    print(genders(context).elementAtOrNull(value!));
                  },
                  orientation: RGOrientation.HORIZONTAL,
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
