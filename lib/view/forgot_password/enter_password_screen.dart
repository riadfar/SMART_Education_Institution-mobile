import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../utils/constants.dart';

var passwordController = TextEditingController();
var formKey = GlobalKey<FormState>();
class EnterPasswordScreen extends StatelessWidget {
  const EnterPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 200,
                  width: 350,
                  child: Image.asset(
                    'assets/images/SMART.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: DefaultText(
                  text: 'Forgot Your Password ? ',
                  color: defaultColor,
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 35),
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DefaultText(text: 'Confirm Password', color: defaultColor, size: 16),
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
              SizedBox(height: 15),
              Defaultbotton(
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
    );
  }
}
