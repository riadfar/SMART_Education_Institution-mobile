import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import '../../../utils/controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        toolbarHeight: 65,
        backgroundColor: defaultColor,
        title: DefaultText(text: 'Profile', color: Colors.white, size: 25),
        actions: [
          DefaultIconButton(
            onPressed: () {},
            icon: Icon(Icons.mode_edit_sharp),
            color: Colors.white,
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment(0, 6),
            children: [
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadiusGeometry.vertical(
                    bottom: Radius.circular(300),
                  ),
                ),
              ),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(100),
                  border: Border.all(width: 3, color: secondaryColor),
                  image: DecorationImage(
                    image: AssetImage('assets/images/1.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'First Name',
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  readOnly: true,
                  hintText: 'First Name',
                  controller: firstNameController,
                  type: TextInputType.name,
                  prefix: Icons.person_2_outlined,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
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
                  readOnly: true,
                  hintText: 'Last Name',
                  controller: lastNameController,
                  type: TextInputType.name,
                  prefix: Icons.person_2_outlined,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
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
                  readOnly: true,
                  hintText: '0955254544',
                  controller: lastNameController,
                  type: TextInputType.number,
                  prefix: Icons.phone_outlined,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'Birthday',
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                Container(
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
                        text: 'Birthday',
                        color: secondaryColor,
                        size: 16,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
