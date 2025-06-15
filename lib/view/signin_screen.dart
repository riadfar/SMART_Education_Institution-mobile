import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';

var emailController = TextEditingController();
var passwordController = TextEditingController();
var formKey = GlobalKey<FormState>();

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20,bottom: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 150,
                    width: 350,
                    child: Image.asset(
                      'assets/images/SMART.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
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
                  child: DefaultText(text: 'Email', color: defaultColor, size: 16),
                ),
                CostumTextFormFeild(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  prefix: Icons.email_outlined,
                  radius: 20,
                  bordercolor: defaultColor,
                  iconcolor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Sorry ! , Email can't be empty, Enter your email ";
                    } else {}
                  },
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DefaultText(text: 'Password', color: defaultColor, size: 16),
                ),
                CostumTextFormFeild(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  prefix: Icons.lock_outlined,
                  isPassword: true,
                  suffix: Icons.visibility_off_outlined,
                  suffixPressed: () {},
                  radius: 20,
                  bordercolor: defaultColor,
                  iconcolor: secondaryColor,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Sorry ! , Password is too short ";
                    } else {}
                  },
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: DefaultTextBotton(
                    text: 'Forgot password?',
                    color: secondaryColor,
                    size: 15,
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 10),
                Defaultbotton(
                  text: 'login',
                  onPress: () {

                  },
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
                      DefaultTextBotton(
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
