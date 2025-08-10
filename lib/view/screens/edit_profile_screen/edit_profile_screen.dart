import 'dart:io';
import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import '../../../utils/constants.dart';
import '../../../utils/controller.dart';
import 'image_picker.dart';

var formKey = GlobalKey<FormState>();

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomScrollView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverAppBar(
                  floating: false,
                  pinned: true,
                  titleSpacing: 0,
                  toolbarHeight: 65,
                  iconTheme: IconThemeData(color: Colors.white,size: 30),
                  title: DefaultText(
                    text: 'Edit Profile',
                    color: Colors.white,
                    size: 25,
                  ),
                  backgroundColor: defaultColor,
                  actions: [
                    DefaultIconButton(
                      onPressed: () {},
                      icon: Icon(Icons.check_rounded),
                      color: Colors.white,
                      size: 35,
                    ),
                  ],
                  expandedHeight: 20,
                ),
              ],
            ),
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
                      fit: BoxFit.cover,
                      image:image==null?AssetImage('assets/images/1.jpg'): FileImage(File(image!.path)),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(.3, 0),
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Builder(
                  builder: (context) {
                    return DefaultIconButton(
                      onPressed: () {
                        showBottomSheetImage(context);
                      },
                      icon: Icon(Icons.add_a_photo_outlined),
                      color: Colors.white,
                      size: 16,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
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
                    controller: firstNameController,
                    type: TextInputType.name,
                    prefix: Icons.person_2_outlined,
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
                    controller: phoneController,
                    type: TextInputType.number,
                    prefix: Icons.phone_outlined,
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
                    padding: const EdgeInsets.only(left: 8.0),
                    child: DefaultText(
                      text: 'Birthday',
                      color: defaultColor,
                      size: 16,
                    ),
                  ),
                 DatePicked(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
