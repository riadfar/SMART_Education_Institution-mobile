import 'package:flutter/material.dart';
import '../../../components/components.dart';
import '../../../utils/constants.dart';
import 'forgotten_password_screen.dart';

var emailController = TextEditingController();
var formKey = GlobalKey<FormState>();

class RequestCodeScreen extends StatelessWidget {
  const RequestCodeScreen({super.key});

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
              DefaultButton(
                text: 'next',
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ForgottenPasswordScreen(),
                    ),
                  );
                },
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
