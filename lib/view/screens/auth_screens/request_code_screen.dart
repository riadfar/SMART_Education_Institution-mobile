import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/app_localization.dart';
import '../../../../components/components.dart';
import '../../../../utils/constants.dart';
import '../../../utils/controller.dart';
import 'forgotten_password_screen.dart';

var formKey = GlobalKey<FormState>();

class RequestCodeScreen extends StatelessWidget {
  const RequestCodeScreen({super.key});

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
                  text: 'forgot_password'.tr(context),
                  color: defaultColor,
                  size: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultText(
                  text: 'email'.tr(context),
                  color: defaultColor,
                  size: 16,
                ),
              ),
              CustomTextFormFiled(
                controller: emailController,
                type: TextInputType.emailAddress,
                prefix: Icons.email_outlined,
                borderColor: defaultColor,
                iconColor: secondaryColor,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return "error_email".tr(context);
                  } else {}
                },
              ),
              SizedBox(height: 15),
              DefaultButton(
                text: 'next'.tr(context).toUpperCase(),
                onPress: () {
                  navigateTo(context, ForgottenPasswordScreen());
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
