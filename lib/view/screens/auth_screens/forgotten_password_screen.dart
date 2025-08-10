import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/verification.dart';
import '../../../../components/components.dart';
import '../../../../utils/constants.dart';
import '../../../utils/controller.dart';

var formKey = GlobalKey<FormState>();
class ForgottenPasswordScreen extends StatelessWidget {
  const ForgottenPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoComponent(),
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
                controller: confirmPasswordController,
                type: TextInputType.visiblePassword,
                prefix: Icons.lock_outlined,
                isPassword: true,
                borderColor: defaultColor,
                iconColor: secondaryColor,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return "Sorry ! , Password is too short ";
                  } else {}
                },
              ),
              SizedBox(height: 15),
              DefaultButton(
                text: 'done',
                onPress: () {
                  navigateTo(context, VerificationScreen());
                },
                width: double.infinity,
                background: defaultColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
