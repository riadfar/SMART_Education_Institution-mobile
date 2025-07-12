import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

import '../../../utils/controller.dart';


var formKey = GlobalKey<FormState>();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15,),

      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoComponent(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: DefaultText(
                      text: 'sign in'.toUpperCase(),
                      color: defaultColor,
                      size: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'Email',
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  prefix: Icons.email_outlined,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Sorry ! , Email can't be empty, Enter your email ";
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'Password',
                    color: defaultColor,
                    size: 16,
                  ),
                ),
                CustomTextFormFiled(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  prefix: Icons.lock_outlined,
                  isPassword: true,
                  radius: 20,
                  borderColor: defaultColor,
                  iconColor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Sorry ! , Password is too short ";
                    } else {}
                  },
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: DefaultTextButton(
                    text: 'Forgot password?',
                    color: secondaryColor,
                    size: 15,
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 10),
                DefaultButton(
                  text: 'login',
                  onPress: () {},
                  width: double.infinity,
                  background: defaultColor,
                  radius: 20,
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.fromBorderSide(
                      BorderSide(color: defaultColor),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        text: "Don't have an account?",
                        color: defaultColor,
                        size: 13,
                      ),
                      DefaultTextButton(
                        text: 'sign up'.toUpperCase(),
                        color: secondaryColor,
                        size: 13,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
