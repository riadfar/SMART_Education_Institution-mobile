import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';
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
                DatePicked(),
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
