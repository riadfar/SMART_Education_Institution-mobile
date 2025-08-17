import 'dart:io';
import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/utils/controller.dart';
import 'package:smart_education_institution_mobile/view/screens/edit_profile_screen/image_picker.dart';

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
                  backgroundColor: defaultColor,
                  pinned: true,
                  titleSpacing: 0,
                  toolbarHeight: 65,
                  iconTheme: IconThemeData(color: Colors.white, size: 30),
                  title: DefaultText(
                    text: 'Edit_Profile'.tr(context),
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
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
                      image: image == null
                          ? AssetImage('assets/images/1.jpg')
                          : FileImage(File(image!.path)),
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
                        return "error_first_name".tr(context);
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
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: DefaultText(
                      text: 'birthday'.tr(context),
                      style: Theme.of(context).textTheme.bodyLarge,
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
