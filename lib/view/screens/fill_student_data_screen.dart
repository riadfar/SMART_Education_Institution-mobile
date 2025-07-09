import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
import 'package:intl/intl.dart';

import '../../../components/components.dart';
import '../../../utils/constants.dart';

var lastNameController = TextEditingController();
var firstNameController = TextEditingController();
var formKey = GlobalKey<FormState>();
var radiokey = GlobalKey<FlutterRadioGroupState>();
DateTime datePicked = DateTime.now();
var selectDate = 'Birthday';

class FillStudentDataScreen extends StatelessWidget {
  const FillStudentDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoComponent(),
                Center(
                  child: DefaultText(
                    text: 'student information'.toUpperCase(),
                    color: defaultColor,
                    size: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'First Name',
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: firstNameController,
                  type: TextInputType.name,
                  prefix: Icons.person_2_outlined,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Sorry ! , First Name can't be empty, Enter your First Name ";
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'Last Name',
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: lastNameController,
                  type: TextInputType.name,
                  prefix: Icons.person_2_outlined,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Sorry ! , Last Name can't be empty, Enter your Last Name ";
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'Phone',
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: lastNameController,
                  type: TextInputType.number,
                  prefix: Icons.phone_outlined,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Sorry ! , Phone can't be empty, Enter your Phone ";
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlutterRadioGroup(
                    key: radiokey,
                    titles: genders,
                    label: 'Genders',
                    activeColor: secondaryColor,
                    orientation: RGOrientation.HORIZONTAL,
                    titleStyle: TextStyle(color: defaultColor),
                    labelStyle: TextStyle(fontSize: 16, color: defaultColor),
                    onChanged: (value) {
                      print(genders.elementAtOrNull(value!));
                    },
                  ),
                ),
                InkWell(
                  onTap: () async {
                    datePicked = (await DatePicker.showSimpleDatePicker(
                      context,
                      lastDate: DateTime.now(),
                      initialDate: DateTime.now(),
                      //lastDate: DateTime.now(),
                      dateFormat: "dd-MMM-yyyy",
                      locale: DateTimePickerLocale.en_us,
                      looping: false,
                      textColor: defaultColor,
                    ))!;
                    selectDate = DateFormat('dd/MMM/yyyy').format(datePicked);
                    print(selectDate);
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.fromBorderSide(
                        BorderSide(color: defaultColor),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: DefaultText(
                        text: selectDate.toString(),
                        color: secondaryColor,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                DefaultButton(
                  text: 'done',
                  onPress: () {},
                  width: double.infinity,
                  background: defaultColor,
                  radius: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
