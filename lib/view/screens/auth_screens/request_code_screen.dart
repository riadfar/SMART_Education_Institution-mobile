import 'package:flutter/material.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/utils/controller.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/forgotten_password_screen.dart';

var formKey = GlobalKey<FormState>();

class RequestCodeScreen extends StatelessWidget {
  const RequestCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        backgroundColor:  Theme.of(context).appBarTheme.backgroundColor,
        surfaceTintColor:  Theme.of(context).appBarTheme.surfaceTintColor,
      ),
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
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultText(
                  text: 'email'.tr(context),
                  style: Theme.of(context).textTheme.bodyLarge,
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
              SizedBox(height: 40),
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
