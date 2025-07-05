import 'package:flutter/material.dart';
import '../../../components/components.dart';
import '../../../utils/constants.dart';

var firstNameController = TextEditingController();
var lastNameController = TextEditingController();
var emailController = TextEditingController();
var passwordController = TextEditingController();
var formKey = GlobalKey<FormState>();

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoComponent(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: DefaultText(
                      text: 'sign up'.toUpperCase(),
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
                      return "Sorry ! , Email can't be empty, Enter your Email ";
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
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(
                    text: 'Confirm Password',
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
                SizedBox(height: 30),
                DefaultButton(
                  text: 'sign up',
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
                        text: "Do you have an account?",
                        color: defaultColor,
                        size: 13,
                      ),
                      DefaultTextButton(
                        text: 'sign in'.toUpperCase(),
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
