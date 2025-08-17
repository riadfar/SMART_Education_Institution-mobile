import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_education_institution_mobile/shared/localization/app_localization.dart';
import 'package:smart_education_institution_mobile/layout/layout.dart';
import 'package:smart_education_institution_mobile/logic/local_cubit/local_cubit.dart';
import 'package:smart_education_institution_mobile/logic/local_cubit/local_state.dart';
import 'package:smart_education_institution_mobile/shared/components/components.dart';
import 'package:smart_education_institution_mobile/utils/constants.dart';
import 'package:smart_education_institution_mobile/utils/controller.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/register_screen.dart';
import 'package:smart_education_institution_mobile/view/screens/auth_screens/request_code_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<LocaleCubit, LocaleState>(
                builder: (context, state) {
                  if (state is ChangeLocaleState) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(15),
                        iconEnabledColor: secondaryColor,
                        underline: Center(),
                        value: state.locale.languageCode,
                        dropdownColor: Colors.white,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: ['ar', 'en'].map((String items) {
                          return DropdownMenuItem<String>(
                            value: items,
                            child: DefaultText(text: items, style: Theme.of(context).textTheme.bodyLarge),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            BlocProvider.of<LocaleCubit>(
                              context,
                            ).changeLanguage(newValue);
                          }
                        },
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
              SizedBox(height: 40),
              LogoComponent(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: DefaultText(
                    text: 'sign in'.tr(context).toUpperCase(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 25),
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultText(
                  text: 'password'.tr(context),
                  style: Theme.of(context).textTheme.bodyLarge,
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
                    return "error_password".tr(context);
                  } else {}
                },
              ),
              Align(
                alignment: Alignment.topRight,
                child: DefaultTextButton(
                  text: 'forgot_password'.tr(context),
                  color: secondaryColor,
                  size: 16,
                  onPressed: () {
                    navigateTo(context, RequestCodeScreen());
                  },
                ),
              ),
              SizedBox(height: 10),
              DefaultButton(
                text: 'login'.tr(context).toUpperCase(),
                onPress: () {
                  navigateAndFinish(context, Layout());
                },
                width: double.infinity,
                background: defaultColor,
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.fromBorderSide(
                    BorderSide(color: defaultColor),
                  ),
                ),
                child: DefaultTextButton(
                  text: 'sign up'.tr(context),
                  color: secondaryColor,
                  size: 16,
                  onPressed: () {
                    navigateAndFinish(context, RegisterScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
